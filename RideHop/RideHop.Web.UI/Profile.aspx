<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="RideHop.Front.UX.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/default.css" />
    <link rel="stylesheet" href="/css/profile.css" />
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
                <% if (new RideHop.Front.UX.SessionManager().Logged_In()) { %>
                <a class="link" id="link_user" href="./Profile.aspx"></a>
                <a class="link" id="log_out">Logout</a>
                <% } else { %>
                <div id="login">
                    <div class="login_section" id="login_facebook">
                        <a id="facebook_connect" href="https://www.facebook.com/dialog/oauth?client_id=575414719217450&redirect_uri=http://localhost:2130/Facebook/FacebookImp.aspx&scope=email"></a>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <!--
        <div id="content">
            <div id="input_helper">
                <div id="input_helper_floater">
                    <p id="input_helper_title">I'm going from</p>
                    <input id="input_helper_value" type="text"/>
                    <br />
                    <a id="input_helper_previous">Previous</a>
                    <a id="input_helper_next">Next</a>
                </div>
            </div>
            <form id="search_form" action="/Search.aspx" method="post" target="_self">
                <input name="query_string" id="search_ride" type="text"/>
            </form>
        </div>
        -->

        <div id="profile">

            <div id="profile_left">
                <div id="basic_info">
                    <div id="profile_pic">
                        <img alt="profile picture" src="<% Response.Write(getUser().PictureUrl); %>"/>                        
                    </div>
                    <div id="info_right">
                        <p id="profile_name"><% Response.Write(getUser().Name); %></p>
                        <p id="profile_email"><% Response.Write(getUser().Email); %></p>
                    </div>
                    <div style="clear:both;"></div>
                </div>

                <div id="reviews">
                    <p id="reviews_title">REVIEWS:</p>
                    <%
                        RideHop.Data.Engine.DataService ds = new RideHop.Data.Engine.DataService();
                        List<RideHop.Data.Lib.Entity.Review> reviews = ds.GetReviews(getUser(),true);
                        foreach(RideHop.Data.Lib.Entity.Review review in reviews)
                        {
                            String reviewer_name = RideHop.Front.UX.Facebook.FacebookHelper.getNameFromFbId(review.ReviewerId);
                    %>
                        <div class="review <% Response.Write(review.Recommend?"positive":"negative"); %>">
                        <p class="review_message"><% Response.Write(review.ReviewMessage); %></p>
                        <p class="review_rating"><% Response.Write(string.Format("{0:0.0}",Math.Truncate(review.Rating*10)/10)); %>/5</p>
                        </div>
                    <% } if (reviews.Count == 0) Response.Write("<div id=\"no_review\">No Reviews</div>"); %>
                </div>
            </div>

            <div id="profile_right">
                <div id="ride_requests">
                    <p id="ride_requests_title">REQUESTS TO YOU:</p>
                <%
                    //100 here, might need to fix if there are more than 100 requests
                    List<RideHop.Data.Lib.Entity.RideRequest> requests = ds.GetRequests(getUser(), true, 100);
                    foreach(RideHop.Data.Lib.Entity.RideRequest request in requests)
                    {
                        string requester_name = RideHop.Front.UX.Facebook.FacebookHelper.getNameFromFbId(request.RequestedById);
                %>
                    <div class="ride_request">
                        <p class="requester_name"><% Response.Write(requester_name); %></p>
                        <% Response.Write(request.Accepted ? "<div class=\"accepted\">ACCEPTED</div>" : (request.SeenByHost?"<div class=\"accepted\">DENIED</div>":"<div class=\"request_controls\"><form action=\"/RequestHandler.asmx/Accept_Request\"><input type=\"hidden\" name=\"request_id\" value=\"" + request.RequestID + "\" /><input type=\"submit\" value=\"ACCEPT\" /></form><form action=\"/RequestHandler.asmx/Deny_Request\"><input type=\"hidden\" name=\"request_id\" value=\"" + request.RequestID + "\" /><input type=\"submit\" value=\"DENY\" /></form>")); %>
                    </div>
                <%
                    }
                %>
                </div>
            </div>
                
            <div style="clear:both"></div>
        </div>

        <form id="form1" runat="server">
        </form>
    </div>

</body>
</html>
