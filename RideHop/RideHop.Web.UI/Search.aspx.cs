using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RideHop.Data.Engine;

namespace RideHop.Front.UX
{
    public partial class Search : System.Web.UI.Page
    {
        private bool has_query;
        private string quick_search = null;
        private string query_string = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            object temp = Request.Form["query_string"];
            quick_search = Request["quick_search"];
            if(temp!=null)
            {
                query_string = (string)temp;
                has_query = true;
            }
        }

        public bool Has_Query()
        {
            return has_query;
        }

        public string Get_Query_String()
        {
            return query_string;
        }

        public string Get_Quick_Search()
        {
            return quick_search;
        }
    }
}