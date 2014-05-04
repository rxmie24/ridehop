using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

namespace RideHop.Data.Engine
{
    public sealed class DataPreload
    {
        private static volatile DataPreload instance;
        private static object syncRoot = new Object();

        public Dictionary<string, Dictionary<string, List<string>>> GeoDataTree;

        private MySQL.MySQLEngine _sqlData;

        private DataPreload() 
        {
            _sqlData = new MySQL.MySQLEngine(
                new MySQL.MySQLConfig.SQLConnect()
                {
                    Database = MySQL.MySQLConfig.SQL_DATABASE,
                    Password = MySQL.MySQLConfig.SQL_PASSWORD,
                    Server = MySQL.MySQLConfig.SQL_SERVER,
                    Username = MySQL.MySQLConfig.SQL_USERNAME
                });

            PopulateGeoData();
        }

        private void PopulateGeoData()
        {
            GeoDataTree = new Dictionary<string, Dictionary<string, List<string>>>();

            if (_sqlData.OpenConnection() == true)
            {
                MySqlCommand tmpCmd = new MySqlCommand(MySQL.Queries.GET_LOCATION(), this._sqlData.SQLConnection);

                using (MySqlDataReader dataReader = tmpCmd.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        string city = dataReader.GetString(MySQL.MySQLConfig.TableConstants.Locations.COL_CITY);
                        string province = dataReader.GetString(MySQL.MySQLConfig.TableConstants.Locations.COL_PROVINCE);
                        string country = dataReader.GetString(MySQL.MySQLConfig.TableConstants.Locations.COL_COUNTRY);

                        if (GeoDataTree.ContainsKey(country) == false)
                            GeoDataTree[country] = new Dictionary<string, List<string>>();

                        if (GeoDataTree[country].ContainsKey(city) == false)
                            GeoDataTree[country][city] = new List<string>();

                        GeoDataTree[country][city].Add(province);
                    }
                }
            }
        }

        public static DataPreload Instance
        {
            get
            {
                if (instance == null)
                {
                    lock (syncRoot)
                    {
                        if (instance == null)
                            instance = new DataPreload();
                    }
                }

                return instance;
            }
        }
    }
}
