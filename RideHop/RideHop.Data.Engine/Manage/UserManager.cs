using MySql.Data.MySqlClient;
using RideHop.Data.Engine.MySQL;
using RideHop.Data.Lib.Entity;
using System;

namespace RideHop.Data.Engine.Manage
{
    public class UserManager
    {
        private MySQLEngine _sqlData;

        public UserManager()
        {
            _sqlData = new MySQL.MySQLEngine(
                new MySQL.MySQLConfig.SQLConnect()
                {
                    Database = MySQL.MySQLConfig.SQL_DATABASE,
                    Password = MySQL.MySQLConfig.SQL_PASSWORD,
                    Server = MySQL.MySQLConfig.SQL_SERVER,
                    Username = MySQL.MySQLConfig.SQL_USERNAME
                });
        }

        public Boolean RegisterUser(FacebookUser inUserAcc_)
        {
            if (this._sqlData.OpenConnection() == true)
            {
                using (MySqlCommand tmpCmd = new MySqlCommand(Queries.USER_EXISTS(inUserAcc_), this._sqlData.SQLConnection))
                {
                    using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                        while (dataReader.Read()) { return false; }

                    tmpCmd.CommandText = Queries.USER_REGISTER(inUserAcc_);
                    tmpCmd.ExecuteNonQuery();
                }

                return true;
            }
            else
            {
                throw new Exception("Can't connect to MySQL server");
            }
        }

        public Boolean UpdateUser(FacebookUser inUserAcc_)
        {
            return _sqlData.ExecuteNonQuery(Queries.USER_UPDATE(inUserAcc_));
        }

        public FacebookUser GetUserByID(long ID)
        {
            if (this._sqlData.OpenConnection() == true)
            {
                using (MySqlCommand tmpCmd = new MySqlCommand(Queries.USER_LOOKUP_BY_ID(ID), this._sqlData.SQLConnection))
                {
                    using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                    {
                        while (dataReader.Read())
                        {
                            return new FacebookUser()
                            {
                                Id = dataReader.GetInt64(MySQLConfig.TableConstants.User.COL_ID),
                                FbId = dataReader.GetInt64(MySQLConfig.TableConstants.User.COL_FB_ID),
                                Name = dataReader.GetString(MySQLConfig.TableConstants.User.COL_NAME),
                                Email = dataReader.GetString(MySQLConfig.TableConstants.User.COL_EMAIL),
                                Phone = dataReader.GetString(MySQLConfig.TableConstants.User.COL_PHONE),
                                AboutMe = dataReader.GetString(MySQLConfig.TableConstants.User.COL_ABOUTME),
                                PictureUrl = dataReader.GetString(MySQLConfig.TableConstants.User.COL_FB_PICTURE_URL)
                            };
                        }
                    }
                }
                return null;
            }
            else
            {
                throw new Exception("Can't connect to MySQL server");
            }
        }
    }
}