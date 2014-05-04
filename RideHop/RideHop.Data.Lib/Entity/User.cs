namespace RideHop.Data.Lib.Entity
{
    public class User
    {
        public long Id { get; set; }

        public long FbID { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        public string Email { get; set; }

        public string Name { get; set; }

        public string Phone { get; set; }

        public string AboutMe { get; set; }

        public string FbPictureURL { get; set; }

        public override string ToString()
        {
            return Name;
        }
    }
}