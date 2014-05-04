using System;

namespace RideHop.Data.Lib.Entity
{
    public class RideRequest
    {
        public long RequestID { get; set; }

        public long RequestedById { get; set; }

        public long RequestedToId { get; set; }

        public long SessionId { get; set; }

        public string AdditionalMessage { get; set; }

        public Boolean Accepted { get; set; }

        public Boolean SeenByHost { get; set; }

        public Boolean SeenByRequester { get; set; }
    }
}