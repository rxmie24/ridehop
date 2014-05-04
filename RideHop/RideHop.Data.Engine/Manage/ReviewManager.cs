using MySql.Data.MySqlClient;
using RideHop.Data.Engine.MySQL;
using RideHop.Data.Lib.Entity;
using System;
using System.Collections.Generic;

namespace RideHop.Data.Engine.Manage
{
    public class ReviewManager
    {
        private MySQLEngine _sqlData;

        public ReviewManager()
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

        public Boolean SubmitReview(Review inReviewToSubmit_)
        {
            return _sqlData.ExecuteNonQuery(Queries.REVIEWS_INSERT(inReviewToSubmit_));
        }

        public List<Review> GetReviewsByUser(FacebookUser inUser_, Boolean isHost_)
        {
            if (this._sqlData.OpenConnection() == true)
            {
                return ParseReviewsByQuery(Queries.REVIEWS_LOOKUP_BY_USER_ID(inUser_, isHost_));
            }
            else
            {
                throw new Exception("Can't connect to MySQL server");
            }
        }

        public List<Review> GetReviewsByRideSession(RideHostSession inRideHostSession_)
        {
            if (this._sqlData.OpenConnection() == true)
            {
                return ParseReviewsByQuery(Queries.REVIEWS_LOOKUP_BY_HOST_SESSION(inRideHostSession_));
            }
            else
            {
                throw new Exception("Can't connect to MySQL server");
            }
        }

        private List<Review> ParseReviewsByQuery(string inQuery_)
        {
            List<Review> retList;

            using (MySqlCommand tmpCmd = new MySqlCommand(inQuery_, this._sqlData.SQLConnection))
            {
                using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                {
                    retList = new List<Review>();

                    while (dataReader.Read())
                    {
                        Review tmp = new Review()
                        {
                            Id = dataReader.GetInt64(MySQLConfig.TableConstants.Reviews.COL_REVIEW_ID),
                            ReviewerId = dataReader.GetInt64(MySQLConfig.TableConstants.Reviews.COL_REVIEWER_ID),
                            ReviewToId = dataReader.GetInt64(MySQLConfig.TableConstants.Reviews.COL_REVIEW_TO_ID),
                            Rating = dataReader.GetInt16(MySQLConfig.TableConstants.Reviews.COL_RATING),
                            ReviewMessage = dataReader.GetString(MySQLConfig.TableConstants.Reviews.COL_MESSAGE),
                            Recommend = (dataReader.GetInt16(MySQLConfig.TableConstants.Reviews.COL_RECOMMEND) == 1),
                            HostSessionReviewID = dataReader.GetInt64(MySQLConfig.TableConstants.Reviews.COL_HOST_SESSION_ID)
                        };

                        retList.Add(tmp);
                    }

                    return retList;
                }
            }
        }
    }
}