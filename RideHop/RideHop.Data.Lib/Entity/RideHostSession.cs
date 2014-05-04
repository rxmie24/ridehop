using System;
using System.Collections.Generic;

namespace RideHop.Data.Lib.Entity
{
    public class RideHostSession
    {
        public long SessionID { get; set; }

        public long RideHostID { get; set; }
        
        public DateTime PostedTime { get; set; }

        public DateTime DepartTime { get; set; }

        public DateTime EstimatedArrivalTime { get; set; }

        public string LocationFrom { get; set; }

        public string LocationTo { get; set; }

        public long[] Riders { get; set; }

        public List<long> RideRequests { get; set; }

        public double Price { get; set; }

        public string AdditionalMessage { get; set; }
    }
}