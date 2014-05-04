using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RideHop.Data.Lib.Entity
{
    public class Location
    {
        public long Id { get; set; }

        public string Country { get; set; }

        public string Province { get; set; }

        public string City { get; set; }
    }
}
