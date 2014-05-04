using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;

namespace RideHop.Front.UX.Facebook
{
    public class FacebookHelper
    {
        public const string API_Key = "575414719217450";
        public const string API_Secret = "4af2382792062f36ea8e5dbac5a84e4f";

        public static string getNameFromFbId(long fb_id)
        {
            WebRequest webRequest = WebRequest.Create("http://graph.facebook.com/" + fb_id.ToString());
            WebResponse webResp = webRequest.GetResponse();
            using (Stream stream = webResp.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, Encoding.UTF8);
                String data = reader.ReadToEnd();
                var jss = new JavaScriptSerializer();
                var dict = jss.Deserialize<Dictionary<string, string>>(data);
                return dict["name"];
            }
        }
    }
}