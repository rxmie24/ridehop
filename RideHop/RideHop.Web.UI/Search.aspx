﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="RideHop.Front.UX.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/search.css" />
    <link href="/css/themes/base/jquery.ui.all.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/jquery.timepicker.css" />
    <link rel="stylesheet" href="/css/common.css" />
    <script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="/js/jquery.timepicker.min.js"></script>
    <script type="text/javascript" src="/js/search.js"></script>
</head>
<body>
    <div id="main_content">
        <div id="top_nav">
            <div id="buttons_right">
                <% if (new RideHop.Front.UX.SessionManager().Logged_In())
                   { %>
                <a class="link" id="link_user" href="./Profile.aspx"></a>
                <a class="link" id="log_out">Logout</a>
                <% }
                   else
                   { %>
                <div id="login">
                    <div class="login_section" id="login_facebook">
                        <a id="facebook_connect" href="https://www.facebook.com/dialog/oauth?client_id=575414719217450&redirect_uri=http://localhost:2130/Facebook/FacebookImp.aspx&scope=email"></a>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <div id="content">
            <div id="input_helper">
                <div id="input_helper_floater">
                    <p id="input_helper_title">I'm going from</p>
                    <input id="input_helper_value" type="text" />
                    <br />
                    <a id="input_helper_previous">Previous</a>
                    <a id="input_helper_next">Next</a>
                </div>
            </div>
            <form id="search_form" action="/Search.aspx" method="post" target="_self">
                <input name="query_string" id="search_ride" type="text" />
            </form>
            <div id="search_options">
                <div class="search_option" id="search_option_recent"><a href="./Search.aspx?quick_search=RECENT">RECENT</a></div>
                <div class="search_option" id="search_option_near_me"><a href="./Search.aspx?quick_search=NEAREST">NEAR ME</a></div>
                <div class="search_option" id="search_option_last_minute"><a href="./Search.aspx?quick_search=HOT">LAST MINUTE</a></div>
                <div style="clear: both"></div>
            </div>
            <div id="search_result_titles">
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Time</th>
                        <th>From</th>
                        <th>To</th>
                        <th>$</th>
                        <th>Seats</th>
                    </tr>
                </table>
            </div>
            <div id="search_result">
                <table>
                    <% if (Has_Query())
                       {
                           RideHop.Data.Engine.DataService ds = new RideHop.Data.Engine.DataService();
                           //List<RideHop.Data.Lib.Entity.RideHostSession> query_result = ds.GetPostedRides(3, RideHop.Data.Lib.Enums.SortRideBy.None);

                       }
                       else
                       {
                           string quick_search = Get_Quick_Search();
                           if (quick_search != null)
                           {
                               RideHop.Data.Engine.DataService ds = new RideHop.Data.Engine.DataService();
                               List<RideHop.Data.Lib.Entity.RideHostSession> query_result = ds.GetPostedRides(3, (RideHop.Data.Lib.Enums.SortRideBy)Enum.Parse(typeof(RideHop.Data.Lib.Enums.SortRideBy), quick_search, true));
                           }
                       }
                    %>
                    <tr>
                        <th>Name</th>
                        <th>Time</th>
                        <th>From</th>
                        <th>To</th>
                        <th>$</th>
                        <th>Seats</th>
                    </tr>
                </table>
            </div>
        </div>
        <form id="form1" runat="server">
        </form>
    </div>

</body>
</html>
