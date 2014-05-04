namespace RideHop.Data.Lib.Entity
{
    public class Review
    {
        public long Id { get; set; }

        public long ReviewToId { get; set; }

        public long ReviewerId { get; set; }

        public long HostSessionReviewID { get; set; }

        public double Rating { get; set; }

        public string ReviewMessage { get; set; }

        public bool Recommend { get; set; }
    }
}