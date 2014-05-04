using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using RideHop.Data.Engine;
using RideHop.Data.Lib.Entity;

namespace RideHop.Data.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            DataService ds = new DataService();
            FacebookUser fb = new FacebookUser(){FbId = 234234234, AboutMe = "werwer", Email = "2342342@GMAIL.COM", Name = "RAMIE", Phone = "911", PictureUrl = "YYYY"};
            FacebookUser fb2 = new FacebookUser() { FbId = 4363278472342123, AboutMe = "werwerd", Email = "2342342@GMAIL.COM", Name = "RAMIE", Phone = "911", PictureUrl = "YYYY" };
            ds.AuthenticateUser(fb);
            ds.AuthenticateUser(fb2);


            ds.StoreRideSession(new RideHostSession()
            {
                LocationFrom = "TORONTO",
                LocationTo = "HOME",
                RideHostID = 234234234,
                EstimatedArrivalTime = DateTime.Now,
                DepartTime = DateTime.Now,
                PostedTime = DateTime.Now,
                AdditionalMessage = "DFSFSDF",
                Price = 34,
                RideRequests = new List<long>(),
                Riders = new long[0]
            });

            var st = ds.GetPostedRides(12, Lib.Enums.SortRideBy.None, fb);
            var tmp = RideHop.Data.Engine.DataPreload.Instance.GeoDataTree;
            var tmp2 = new DataService();
            */
            /*
            var tmp2 = new DataService();

            while (true)
            {
                var tmpLoc = System.Console.ReadLine().ToLower();
                var res = tmp2.GetLocationEstimate(tmpLoc);

                System.Threading.Tasks.Parallel.For(0, res.Count, i => System.Console.Write(res[i] + ", "));
                System.Console.WriteLine();
            }
            */

            for (int i = 0; i < 300; i++)
                System.Console.WriteLine(FibCalc(i));

            System.Console.ReadLine();

        }


        public static int FibCalc(int inFibNum_)
        {
            int x = 0, y = 1, tmp;
            Parallel.For(0, inFibNum_, new ParallelOptions() { MaxDegreeOfParallelism = 300}, i => { tmp = x; x = y; y = tmp + y; });
            return x;
        }
    }
}
