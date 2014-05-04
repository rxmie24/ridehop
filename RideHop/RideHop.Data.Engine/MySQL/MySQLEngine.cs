using MySql.Data.MySqlClient;
using System;

//TODO:
//New exception handling and logging required in case DB in unavailable (logger depends on SQL DB)

namespace RideHop.Data.Engine.MySQL
{
    public class MySQLEngine : IDisposable
    {
        public MySqlConnection SQLConnection { get; private set; }

        public MySQLEngine(MySQL.MySQLConfig.SQLConnect inConnection_)
        {
            this.SQLConnection = new MySqlConnection(inConnection_.ConnectionString);
        }

        public bool OpenConnection()
        {
            try
            {
                if (SQLConnection.State != System.Data.ConnectionState.Open)
                    SQLConnection.Open();

                return true;
            }
            catch (MySqlException ex)
            {
                //Get response based on error number
                //0: Cannot connect to server.
                //1045: Invalid user name and/or password.
                switch (ex.Number)
                {
                    case 0:
                        //Logger.Instance.Log("Cannot connect to server.  Contact administrator", Logger.EventLevel.Error, ex);
                        break;

                    case 1045:
                        //Logger.Instance.Log("Invalid username/password, please try again", Logger.EventLevel.Error, ex);
                        break;
                }
                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                SQLConnection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                //Logger.Instance.Log("Exception when closing SQL connection", Logger.EventLevel.Error, ex);
                return false;
            }
        }

        public void Insert(string[] inQuery_)
        {
            if (this.OpenConnection() == true)
            {
                for (int i = 0; i < inQuery_.Length; i++)
                {
                    MySqlCommand tmpCmd = new MySqlCommand(inQuery_[i], SQLConnection);
                    tmpCmd.ExecuteNonQuery();
                }

                this.CloseConnection();
            }
            else
            {
                //Exception thrown here?
            }
        }

        public Boolean ExecuteNonQuery(string inQueryToExecute)
        {
            if (this.OpenConnection() == true)
            {
                
                using (MySqlCommand tmpCmd = new MySqlCommand(inQueryToExecute, this.SQLConnection))
                    tmpCmd.ExecuteNonQuery();

                return true;
            }
            else
                throw new Exception("Can't connect to MySQL server");
        }

        public void Dispose()
        {
            this.CloseConnection();
        }
    }
}