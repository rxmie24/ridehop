using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using RideHop.Data.Engine;
using RideHop.Data.Lib.Entity;

namespace RideHop.Data.Console
{
    public class Playground_Ahilan
    {
    
        static void Runn(string[] args)
        {
            DataService ds = new DataService();
            FacebookUser fb = new FacebookUser() { FbId = 666, AboutMe = "werwer", Email = "IAME@GMAIL.COM", Name = "AHILAN", Phone = "911", PictureUrl = "YYYY" };
            FacebookUser fb2 = new FacebookUser() { FbId = 667, AboutMe = "werwer", Email = "IAME2@GMAIL.COM", Name = "AHILAN2", Phone = "911", PictureUrl = "YYYY" };
            FacebookUser fb3 = new FacebookUser() { FbId = 668, AboutMe = "werwer", Email = "IAME3@GMAIL.COM", Name = "AHILAN3", Phone = "911", PictureUrl = "YYYY" };
            ds.AuthenticateUser(fb);
            ds.AuthenticateUser(fb2);
            ds.AuthenticateUser(fb3);
            List<long> hi = new List<long> { 12, 12, 12, 12 }; 
            RideHostSession s1 = new RideHostSession() { RideHostID = 666, PostedTime = DateTime.Now, DepartTime = DateTime.Now, EstimatedArrivalTime = DateTime.Now, LocationTo = "Toronto", LocationFrom = "Waterloo", Riders = new long[] { 1, 1, 1 }, RideRequests = hi, Price = 12, AdditionalMessage = "no" };
            RideHostSession s2 = new RideHostSession() { RideHostID = 699, PostedTime = DateTime.Now, DepartTime = DateTime.Now, EstimatedArrivalTime = DateTime.Now, LocationTo = "Markham", LocationFrom = "Waterloo", Riders = new long[] { 1, 1, 1 }, RideRequests = hi, Price = 12, AdditionalMessage = "no" };
            RideHostSession s3 = new RideHostSession() { RideHostID = 698, PostedTime = DateTime.Now, DepartTime = DateTime.Now, EstimatedArrivalTime = DateTime.Now, LocationTo = "Ajax", LocationFrom = "Waterloo", Riders = new long[] { 1, 1, 1 }, RideRequests = hi, Price = 12, AdditionalMessage = "no" };
            RideHostSession s4 = new RideHostSession() { RideHostID = 697, PostedTime = DateTime.Now, DepartTime = DateTime.Now, EstimatedArrivalTime = DateTime.Now, LocationTo = "Weber", LocationFrom = "Waterloo", Riders = new long[] { 1, 1, 1 }, RideRequests = hi, Price = 12, AdditionalMessage = "no" };
            ds.StoreRideSession(s1);
            RideRequest r1 = new RideRequest() {RequestedById = 667, RequestedToId = 666, SessionId = s1.SessionID, AdditionalMessage = "hey", Accepted = false, SeenByHost = false, SeenByRequester = false };
            RideRequest r2 = new RideRequest() { RequestedById = 668, RequestedToId = 666, SessionId = s1.SessionID, AdditionalMessage = "heyyo", Accepted = false, SeenByHost = false, SeenByRequester = false };
            ds.StoreRideRequest(r1);
            ds.StoreRideRequest(r2);

            List<RideRequest> hi2 = ds.GetRequests(fb2, true, 10);
            ds.GetPostedRides(10, Lib.Enums.SortRideBy.Hot, fb);
        }
        
    }
}
