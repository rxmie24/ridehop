using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace RideHop.Front.UX
{
    /// <summary>
    /// Summary description for SessionManager
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SessionManager : System.Web.Services.WebService
    {

        RideHop.Data.Engine.DataService ds = new Data.Engine.DataService();

        [WebMethod]
        public bool Logged_In()
        {
            bool result = false;
            object test = Session["logged_in"];
            if(test!=null && Session["rh_user"]!=null)
            {
                result = (bool)test;
            }
            return result;
        }

        public void Log_Out()
        {
            Session.Remove("logged_in");
            Session.Remove("rh_user");
        }

        public List<string> getSuggestion(string in_query)
        {
            var tmp =  ds.GetLocationEstimate(in_query);
            return tmp;
        }
    }
}
