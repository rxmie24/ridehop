using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace RideHop.Front.UX
{
    /// <summary>
    /// Summary description for RequestHandler
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class RequestHandler : System.Web.Services.WebService
    {
        RideHop.Data.Engine.DataService ds = new Data.Engine.DataService();

        [WebMethod]
        public bool Accept_Request(long request_id)
        {
            RideHop.Data.Lib.Entity.RideRequest request = ds.GetRideReqById(request_id);
            request.Accepted = true;
            request.SeenByHost = true;
            bool result = ds.HandleRequest(request);
            HttpContext.Current.Response.Redirect("/Profile.aspx");
            return result;
        }

        [WebMethod]
        public bool Deny_Request(long request_id)
        {
            RideHop.Data.Lib.Entity.RideRequest request = ds.GetRideReqById(request_id);
            request.Accepted = false;
            request.SeenByHost = true;
            bool result = ds.HandleRequest(request);
            HttpContext.Current.Response.Redirect("/Profile.aspx");
            return result;
        }
    }
}
