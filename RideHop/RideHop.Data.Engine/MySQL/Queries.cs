using RideHop.Data.Lib.Entity;
using System;

namespace RideHop.Data.Engine.MySQL
{
    public class Queries
    {
        //RIDE HOST SESSION
        public static string STORE_RIDE_SESSION(RideHostSession ridehostsession_)
        {
            return string.Format("INSERT INTO rh_ridehostsessions VALUES (NULL, {0}, '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}')",
                                    ridehostsession_.RideHostID,
                                    Utilities.ConvertToMySQLDate(ridehostsession_.PostedTime),
                                    Utilities.ConvertToMySQLDate(ridehostsession_.DepartTime),
                                    Utilities.ConvertToMySQLDate(ridehostsession_.EstimatedArrivalTime),
                                    ridehostsession_.LocationFrom,
                                    ridehostsession_.LocationTo,
                                    Utilities.JoinUserArrayByID(ridehostsession_.Riders),
                                    Utilities.JoinUserArrayByID(ridehostsession_.RideRequests.ToArray()),
                                    ridehostsession_.Price,
                                    ridehostsession_.AdditionalMessage
                                );
        }
        public static string UPDATE_RIDE_SESSION(RideHostSession ridehostsession_)
        {
            return string.Format("UPDATE rh_ridehostsessions t SET t.`postedtime` = {0}, t.`departtime` = {1}, t.`estimatedarrivaltime` = {2}, t.`locationfrom` = {3}, t.`locationto` = {4}, t.`riders` = {5}, t.`riderequests` = {6}, t.`price` = {7}, t.`additionalmessage` = {8} WHERE sessionid = {9} AND ridehostid = {10}", 
                                Utilities.ConvertToMySQLDate(ridehostsession_.PostedTime),
                                    Utilities.ConvertToMySQLDate(ridehostsession_.DepartTime),
                                    Utilities.ConvertToMySQLDate(ridehostsession_.EstimatedArrivalTime),
                                    ridehostsession_.LocationFrom,
                                    ridehostsession_.LocationTo,
                                    Utilities.JoinUserArrayByID(ridehostsession_.Riders),
                                    Utilities.JoinUserArrayByID(ridehostsession_.RideRequests.ToArray()),
                                    ridehostsession_.Price,
                                    ridehostsession_.AdditionalMessage, 
                                    ridehostsession_.SessionID, 
                                    ridehostsession_.RideHostID);
        }

        public static string RIDE_SESSION_LOOKUP(int amount_)
        {
            return string.Format("SELECT * FROM rh_ridehostsessions r LIMIT {0}", amount_);
        }

        public static string RIDE_SESSION_LOOKUP_BY_USERID(FacebookUser inUserAccount_)
        {
            return string.Format("SELECT * FROM rh_ridehostsessions r WHERE r.ridehostid = {0}", inUserAccount_.Id);
        }

        public static string RIDE_SESSION_LOOKUP_BY_ENUM(int inAmt_, Lib.Enums.SortRideBy inSortBy_)
        {
            switch (inSortBy_)
            {
                case Lib.Enums.SortRideBy.Recent:
                    return string.Format("SELECT * FROM rh_ridehostsessions r ORDER BY r.postedtime LIMIT {0}", inAmt_);

                case Lib.Enums.SortRideBy.Hot:
                    return string.Format("SELECT * FROM rh_ridehostsessions r ORDER BY r.departtime LIMIT {0}", inAmt_);

                default:
                    throw new Exception("Not Implemented Yet");
            }
        }

        public static string RIDE_SESSION_LOOKUP_BY_LOCATION(string inLocationRequest_, int inAmt_)
        {
            return string.Format("SELECT * FROM rh_ridehostsessions r WHERE r.locationfrom OR r.locationto LIKE '%{0}%' LIMIT {1}", inLocationRequest_, inAmt_);
        }

        public static string GET_RIDE_HOST_SESSION_BY_RIDE_HOST_ID(long sessionID_)
        {
            return string.Format("SELECT * FROM rh_ridehostsessions r WHERE r.ridehostid = {0}", sessionID_);
        }

        //RIDE REQUESTS
        public static string STORE_RIDE_REQ(RideRequest riderequest_)
        {
            return string.Format("INSERT INTO rh_riderequests VALUES (NULL, {0}, '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')",
                                    riderequest_.RequestedById,
                                    riderequest_.RequestedToId,
                                    riderequest_.SessionId,
                                    riderequest_.AdditionalMessage,
                                    Utilities.ConvertToSQLBoolean(riderequest_.Accepted),
                                    Utilities.ConvertToSQLBoolean(riderequest_.SeenByHost),
                                    Utilities.ConvertToSQLBoolean(riderequest_.SeenByRequester)
                                );
        }

        public static string RIDE_REQ_LOOKUP_BY_SESSION(RideHostSession inHost_)
        {
            return string.Format("SELECT * FROM rh_riderequests WHERE sessionid = {0}", inHost_.SessionID);
        }

        public static string RIDE_REQ_LOOKUP_BY_RIDEREQID(long inRideReqId_)
        {
            return string.Format("SELECT * FROM rh_riderequests WHERE requestid = {0}", inRideReqId_);
        }

        public static string RIDE_REQ_REQUESTS_BY_USER(FacebookUser inFacebookUser_, Boolean isHost)
        {
            if (isHost)
                return string.Format("SELECT * FROM rh_riderequests WHERE requestedtoid = {0}", inFacebookUser_.FbId);
            else
                return string.Format("SELECT * FROM rh_riderequests WHERE requestedbyid = {0}", inFacebookUser_.FbId);
        }

        public static string RIDE_REQ_UPDATE(RideRequest riderequest_)
        {
            return string.Format("UPDATE rh_riderequests t SET t.`accepted` = {0}, t.`seenbyhost` = {1}, t.`seenbyrequestor` = {2} WHERE t.`requestid` = {3}",
                Utilities.ConvertToSQLBoolean(riderequest_.Accepted),
                Utilities.ConvertToSQLBoolean(riderequest_.SeenByHost),
                Utilities.ConvertToSQLBoolean(riderequest_.SeenByRequester), 
                riderequest_.RequestID);
        }

        //USER QUERIES
        public static string USER_EXISTS(FacebookUser User_)
        {
            return string.Format("SELECT * FROM rh_users WHERE fbid = '{0}'", User_.FbId);
        }

        public static string USER_UPDATE(FacebookUser inUserToUpdate_)
        {
            return string.Format("UPDATE rh_users t SET t.`aboutme` = '{0}', t.`phone` = '{1}', t.`fbpictureurl` = '{2}', t.`name` = '{3}'  WHERE t.`fbid` = {4}",
                                    inUserToUpdate_.AboutMe,
                                    inUserToUpdate_.Phone,
                                    inUserToUpdate_.PictureUrl,
                                    inUserToUpdate_.Name,
                                    inUserToUpdate_.FbId);
        }

        public static string USER_REGISTER(FacebookUser inAccount_)
        {
            return string.Format("INSERT INTO rh_users VALUES (NULL, '{0}', '{1}', '{2}', '{3}', '{4}', '{5}')",
                                    inAccount_.FbId,
                                    inAccount_.Name,
                                    inAccount_.Email,
                                    inAccount_.Phone,
                                    inAccount_.AboutMe,
                                    inAccount_.PictureUrl);
        }

        public static string USER_LOOKUP_BY_ID(long id_)
        {
            return string.Format("SELECT * FROM rh_users  WHERE fbid = {0}", id_);
        }
        
        //REVIEwS
        public static string REVIEWS_LOOKUP_BY_USER_ID(FacebookUser User_, Boolean isHost_)
        {
            if (isHost_)
                return string.Format("SELECT * FROM rh_reviews WHERE reviewtoid = {0}", User_.FbId);
            else
                return string.Format("SELECT * FROM rh_reviews WHERE reviewerid = {0}", User_.FbId);
        }

        public static string REVIEWS_LOOKUP_BY_HOST_SESSION(RideHostSession inHost_)
        {
            return string.Format("SELECT * FROM rh_reviews WHERE hostsessionreviewid = {0}", inHost_.SessionID);
        }

        public static string REVIEWS_INSERT(Review inReview_)
        {
            return string.Format("INSERT INTO rh_reviews VALUES (NULL, '{0}', '{1}', '{2}', '{3}', '{4}', '{5}')",
                                    inReview_.ReviewToId,
                                    inReview_.ReviewerId,
                                    inReview_.HostSessionReviewID,
                                    inReview_.Rating,
                                    inReview_.ReviewMessage,
                                    Utilities.ConvertToSQLBoolean(inReview_.Recommend));
        }

        //LOCATIONS
        public static string REGISTER_LOCATION(Location inLocation_)
        {
            return string.Format("INSERT INTO rh_locations VALUES (NULL, '{0}', '{1}', '{2}')",
                                    inLocation_.Country,
                                    inLocation_.Province,
                                    inLocation_.City);
        }

        public static string GET_LOCATION()
        {
            return string.Format("SELECT * FROM rh_locations" );
        }

    }
}
