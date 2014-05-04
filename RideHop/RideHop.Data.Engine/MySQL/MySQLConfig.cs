namespace RideHop.Data.Engine.MySQL
{
    public class MySQLConfig
    {
        public const long LOG_SAVE_TIME = 10000;

        public const string LOG_LOCATION = "C://Temp//Logs//";

        public const string LOG_FORMAT = "[{0}][{1}]: {2}";

        public const string DT_FORMAT = "s";

        public const string SQL_DATABASE = "ridehop_main";

        public const string SQL_USERNAME = "ridehop_remote";

        public const string SQL_SERVER = "database.ridehop.me";

        public const string SQL_PASSWORD = "0L!uxn&5(kWt";

        public const char SQL_DEFAULT_DELIMETER = ';';

        public const string SQL_DEFAULT_NULL = "NULL";

        public const string SQL_DEFAULT_TRUE = "True";

        public const string SQL_DEFAULT_FALSE = "False";

        public class SQLConnect
        {
            public string Server { get; set; }

            public string Username { get; set; }

            public string Password { get; set; }

            public string Database { get; set; }

            public string ConnectionString
            {
                get { return "SERVER=" + Server + ";" + "DATABASE=" + Database + ";" + "UID=" + Username + ";" + "PASSWORD=" + Password + ";Convert Zero Datetime=True;Allow Zero Datetime=True"; }
            }
        }

        public class TableConstants
        {
            public class User
            {
                public const string TABLE_USER = "rh_users";

                public const string COL_ID = "id";

                public const string COL_FB_ID = "fbid";

                public const string COL_NAME = "name";

                public const string COL_EMAIL = "email";

                public const string COL_PHONE = "phone";

                public const string COL_ABOUTME = "aboutme";

                public const string COL_FB_PICTURE_URL = "fbpictureurl";
            }

            public class RideHostSession
            {
                public const string TABLE_RIDE_HOST_SESSION = "rh_ridehostsession";

                public const string COL_SESSION_ID = "sessionid";

                public const string COL_RIDE_HOST_ID = "ridehostid";

                public const string COL_USER_POST_TIME = "postedtime";

                public const string COL_DEP_TIME = "departtime";

                public const string COL_ARRIVAL_TIME = "estimatedarrivaltime";

                public const string COL_DEP_LOCATION = "locationfrom";

                public const string COL_DESTINATION = "locationto";

                public const string COL_RIDERS = "riders";

                public const string COL_RIDE_REQ = "riderequests";

                public const string COL_PRICE = "price";

                public const string COL_ADDITIONAL_MESSAGE = "additionalmessage";

                public const string COL_ACTIVE = "active";
            }

            public class RideRequest
            {
                public const string TABLE_RIDE_REQUEST = "rh_riderequests";

                public const string COL_REQ_ID = "requestid";

                public const string COL_REQ_BY_ID = "requestedbyid";

                public const string COL_REQ_TO_ID = "requestedtoid";

                public const string COL_SESSION_ID = "sessionid";

                public const string COL_ADDITIONAL_MSG = "additionalmessage";

                public const string COL_ACCEPTED = "accepted";

                public const string COL_SEEN_BY_HOST = "seenbyhost";

                public const string COL_SEEN_BY_REQUESTER = "seenbyrequestor";
            }

            public class Reviews
            {
                public const string TABLE_REVIEWS = "rh_reviews";

                public const string COL_REVIEW_ID = "reviewid";

                public const string COL_REVIEW_TO_ID = "reviewtoid";

                public const string COL_REVIEWER_ID = "reviewerid";

                public const string COL_HOST_SESSION_ID = "hostsessionreviewid";

                public const string COL_RATING = "rating";

                public const string COL_MESSAGE = "message";

                public const string COL_RECOMMEND = "recommend";
            }

            public class Locations
            {
                public const string TABLE_LOCATIONS = "rh_locations";

                public const string COL_COUNTRY = "country";

                public const string COL_PROVINCE = "province";

                public const string COL_CITY = "city";
            }
        }
    }
}