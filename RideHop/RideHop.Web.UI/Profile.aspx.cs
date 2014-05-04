using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideHop.Front.UX
{
    public partial class Profile : System.Web.UI.Page
    {

        RideHop.Data.Lib.Entity.FacebookUser fb_user = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!new SessionManager().Logged_In())
            {
                Response.Redirect("./");
            }
            else
            {
                fb_user = (RideHop.Data.Lib.Entity.FacebookUser)Session["rh_user"];
            }
        }

        public RideHop.Data.Lib.Entity.FacebookUser getUser()
        {
            return fb_user;
        }
    }
}