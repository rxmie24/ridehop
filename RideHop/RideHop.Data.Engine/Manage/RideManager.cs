using MySql.Data.MySqlClient;
using RideHop.Data.Engine.MySQL;
using RideHop.Data.Lib;
using RideHop.Data.Lib.Entity;
using System.Collections.Generic;
using System.Linq;
using System;

namespace RideHop.Data.Engine.Manage
{
    public class RideManager
    {
        private MySQLEngine _sqlData;

        public RideManager()
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

        //RIDE REQUESTS
        public Boolean StoreRideRequest(RideRequest inRideRequest_)
        {
            return _sqlData.ExecuteNonQuery(Queries.STORE_RIDE_REQ(inRideRequest_));
        }

        public Boolean UpdateRideRequest(RideRequest inRideRequest_)
        {
            return _sqlData.ExecuteNonQuery(Queries.RIDE_REQ_UPDATE(inRideRequest_));
        }

        public RideRequest GetRideRequestById(long inRideReqId_)
        {
            return ParseRideRequestByQuery(Queries.RIDE_REQ_LOOKUP_BY_RIDEREQID(inRideReqId_))[0];
        }

        public List<RideRequest> GetRideRequestsByUser(FacebookUser inFacebookUser_, Boolean isHost_)
        {
            if (this._sqlData.OpenConnection() == true)
                return ParseRideRequestByQuery(Queries.RIDE_REQ_REQUESTS_BY_USER(inFacebookUser_, isHost_));
            else
                throw new Exception("Can't connect to MySQL server");
        }

        public List<RideRequest> GetRideRequestByHostSessionID(RideHostSession inHost_, int inAmt_)
        {
            if (this._sqlData.OpenConnection() == true)
                return ParseRideRequestByQuery(Queries.RIDE_REQ_LOOKUP_BY_SESSION(inHost_));
            else
                throw new Exception("Can't connect to MySQL server");
        }

        private List<RideRequest> ParseRideRequestByQuery(string inQuery_)
        {
            if (_sqlData.OpenConnection() == true)
            {
                MySqlCommand tmpCmd = new MySqlCommand(inQuery_, this._sqlData.SQLConnection);

                List<RideRequest> retRideRequests = new List<RideRequest>();

                using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        RideRequest tmp = new RideRequest()
                        {
                            SessionId = dataReader.GetInt64(MySQLConfig.TableConstants.RideRequest.COL_SESSION_ID),
                            RequestID = dataReader.GetInt64(MySQLConfig.TableConstants.RideRequest.COL_REQ_ID),
                            AdditionalMessage = dataReader.GetString(MySQLConfig.TableConstants.RideRequest.COL_ADDITIONAL_MSG),
                            Accepted = (dataReader.GetInt16(MySQLConfig.TableConstants.RideRequest.COL_ACCEPTED) == 1),
                            RequestedById = dataReader.GetInt64(MySQLConfig.TableConstants.RideRequest.COL_REQ_BY_ID),
                            RequestedToId = dataReader.GetInt64(MySQLConfig.TableConstants.RideRequest.COL_REQ_TO_ID)
                        };

                        retRideRequests.Add(tmp);
                    }
                }

                return retRideRequests;
            }
            else
            {
                throw new Exception("SQL Connection error");
            }
        }

        //HOST SESSIONS
        public Boolean StoreRideSession(RideHostSession inRideSession_)
        {
            return _sqlData.ExecuteNonQuery(Queries.STORE_RIDE_SESSION(inRideSession_));
        }

        public Boolean UpdateRideSession(RideHostSession inRideSession_)
        {
            return _sqlData.ExecuteNonQuery(Queries.UPDATE_RIDE_SESSION(inRideSession_));
        }

        public List<RideHostSession> GetRideSessions(Enums.SortRideBy inSortRideBy_, int inAmt_)
        {
            if (this._sqlData.OpenConnection() == true)
                return ParseRideSessionByQuery(Queries.RIDE_SESSION_LOOKUP_BY_ENUM(inAmt_, inSortRideBy_));
            else
                throw new Exception("Can't connect to MySQL server");
        }

        public List<RideHostSession> GetRideSessions(FacebookUser inFacebookUser_)
        {
            if (this._sqlData.OpenConnection() == true)
                return ParseRideSessionByQuery(Queries.RIDE_SESSION_LOOKUP_BY_USERID(inFacebookUser_));
            else
                throw new Exception("Can't connect to MySQL server");
        }

        public List<RideHostSession> GetRideSessions(int inAmt_ = 10)
        {
            if (this._sqlData.OpenConnection() == true)
                return ParseRideSessionByQuery(Queries.RIDE_SESSION_LOOKUP(inAmt_));
            else
                throw new Exception("Can't connect to MySQL server");
        }

        private List<RideHostSession> ParseRideSessionByQuery(string inQuery_)
        {
            if (_sqlData.OpenConnection() == true)
            {
                MySqlCommand tmpCmd = new MySqlCommand(inQuery_, this._sqlData.SQLConnection);

                List<RideHostSession> retRideRequests = new List<RideHostSession>();

                using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        string tm2p = dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_DEP_TIME);
                        RideHostSession tmp = new RideHostSession()
                        {
                            SessionID = dataReader.GetInt64(MySQLConfig.TableConstants.RideHostSession.COL_SESSION_ID),
                            RideHostID = dataReader.GetInt64(MySQLConfig.TableConstants.RideHostSession.COL_RIDE_HOST_ID),
                            DepartTime = Utilities.ConvertFromMySQLDate(dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_DEP_TIME)),
                            EstimatedArrivalTime = Utilities.ConvertFromMySQLDate(dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_ARRIVAL_TIME)),
                            Price = dataReader.GetDouble(MySQLConfig.TableConstants.RideHostSession.COL_PRICE),
                            LocationFrom = dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_DEP_LOCATION),
                            LocationTo = dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_DESTINATION),
                            AdditionalMessage = dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_ADDITIONAL_MESSAGE),
                            PostedTime = Utilities.ConvertFromMySQLDate(dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_USER_POST_TIME)),
                            RideRequests = Utilities.ParseUserIDArrayString(dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_RIDE_REQ)).ToList(),
                            Riders = Utilities.ParseUserIDArrayString(dataReader.GetString(MySQLConfig.TableConstants.RideHostSession.COL_RIDERS))
                        };

                        retRideRequests.Add(tmp);
                    }
                }

                return retRideRequests;
            }
            else
            {
                throw new Exception("Unable to connect to SQL database");
            }
        }
    }
}