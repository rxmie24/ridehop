using MySql.Data.Types;
using RideHop.Data.Lib.Entity;
using System;
using System.Text;

namespace RideHop.Data.Engine
{
    public class Utilities
    {
        public static string ConvertToMySQLDate(DateTime inDate_)
        {
            return inDate_.ToString("yyyy-MM-dd HH:mm:ss");
        }

        public static DateTime ConvertFromMySQLDate(string inDateToParse_)
        {
            return DateTime.Parse(inDateToParse_);
        }

        public static string JoinUserArrayByID(long[] inIds_)
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < inIds_.Length; i++)
                    sb.Append(inIds_[i] + MySQL.MySQLConfig.SQL_DEFAULT_DELIMETER);

            return sb.ToString();
        }

        public static int ConvertToSQLBoolean(Boolean inBoolToParse_)
        {
            if (inBoolToParse_)
                return 1;

            return 0;
        }

        public static Boolean ConvertFromSQLBoolean(int inSQLNum_)
        {
            return inSQLNum_ == 1;
        }

        public static long[] ParseUserIDArrayString(string inUserIdArrayString_)
        {
            if (string.IsNullOrEmpty(inUserIdArrayString_))
                return new long[0];

            string[] tmpString = inUserIdArrayString_.Split(new char[] { MySQL.MySQLConfig.SQL_DEFAULT_DELIMETER });
            long[] rtnIntArr = new long[tmpString.Length];

            for (int i = 0; i < tmpString.Length; i++)
                rtnIntArr[i] = Convert.ToInt64(tmpString[i] == string.Empty ? "0":tmpString[i]);

            return rtnIntArr;
        }
    }
}