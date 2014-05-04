using System;
using System.Web.Script.Serialization;
using RideHop.Data.Lib.Entity;
using System.Net;
using System.IO;
using System.Text;
using Facebook;
using System.Collections.Generic;
using RideHop.Data.Engine;

namespace RideHop.Front.UX.Facebook
{
    public partial class FacebookImp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                    Response.Redirect("/Front.aspx");
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string access_token_data = Fetch_Access_Token(code);
                    string user_token = access_token_data.Split("=".ToCharArray())[1].Split("&".ToCharArray())[0];
                    FacebookClient fb = new FacebookClient(user_token);
                    fb.AppSecret = FacebookHelper.API_Secret;
                    fb.AppId = FacebookHelper.API_Key; 

                    var result = (IDictionary<string, object>)fb.Get("/me");
                    string name = (string)result["name"];
                    long fb_id = long.Parse((string)result["id"]);
                    string email = (string)result["email"];
                    string pictureurl = string.Format("https://graph.facebook.com/{0}/picture", fb_id);

                    RideHop.Data.Lib.Entity.FacebookUser faceBookUser = new FacebookUser() { Name = name, FbId = fb_id, Email = email, PictureUrl = pictureurl };
                    DataService ds = new DataService();
                    //var test = ds.AuthenticateUser(faceBookUser);
                    Session.Add("logged_in", true);
                    Session.Add("rh_user", faceBookUser);
                }
                Response.Redirect("/Front.aspx");
            }
        }

        public string Fetch_Access_Token(string code)
        {
            WebRequest webRequest = WebRequest.Create("https://graph.facebook.com/oauth/access_token?client_id=" + FacebookHelper.API_Key + "&redirect_uri=http://localhost:2130/Facebook/FacebookImp.aspx&client_secret=" + FacebookHelper.API_Secret + "&code=" + code);
            WebResponse webResp = webRequest.GetResponse();
            using (Stream stream = webResp.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, Encoding.UTF8);
                String data = reader.ReadToEnd();
                return data;
            }
        }
    }
}