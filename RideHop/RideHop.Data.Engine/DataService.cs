using RideHop.Data.Engine.Manage;
using RideHop.Data.Lib;
using RideHop.Data.Lib.Entity;
using System;
using System.Collections.Generic;

namespace RideHop.Data.Engine
{
    public class DataService
    {
        private UserManager _userManager;
        private RideManager _rideManager;
        private ReviewManager _reviewManager;
        private DataPreload _dataPreload;

        public DataService()
        {
            _userManager = new UserManager();
            _rideManager = new RideManager();
            _reviewManager = new ReviewManager();

            _dataPreload = DataPreload.Instance;
        }

        public Tuple<List<RideHostSession>, List<RideRequest>> AuthenticateUser(FacebookUser inFacebookUser_)
        {
            _userManager.RegisterUser(inFacebookUser_);

            return new Tuple<List<RideHostSession>, List<RideRequest>>(_rideManager.GetRideSessions(Enums.SortRideBy.Recent, 3), _rideManager.GetRideRequestsByUser(inFacebookUser_, true));
        }

        public Boolean UpdateUser(FacebookUser inFacebookUser_)
        {
            return _userManager.UpdateUser(inFacebookUser_);
        }

        public List<RideHostSession> GetPostedRides(int inAmt_, Enums.SortRideBy inSortRideBy_, FacebookUser inFacebookUser_ = null)
        {
            if (inFacebookUser_ != null)
                return _rideManager.GetRideSessions(inFacebookUser_);
            else
                return _rideManager.GetRideSessions(inSortRideBy_, inAmt_);
        }

        public List<RideRequest> GetRequests(FacebookUser inFacebookUser_, Boolean isHost_, int inAmt_)
        {
            return _rideManager.GetRideRequestsByUser(inFacebookUser_, isHost_);
        }

        public RideRequest GetRideReqById(long inRideReq_)
        {
            return _rideManager.GetRideRequestById(inRideReq_);
        }

        public Boolean StoreRideRequest(RideRequest inRideRequest_)
        {
            return _rideManager.StoreRideRequest(inRideRequest_);
        }

        public Boolean StoreRideSession(RideHostSession inHost_)
        {
            return _rideManager.StoreRideSession(inHost_);
        }

        public Boolean UpdateRideSession(RideHostSession inHost_)
        {
            return _rideManager.UpdateRideSession(inHost_);
        }

        public List<RideHostSession> SearchRequest(string inQuery_)
        {
            inQuery_ = inQuery_.ToLower();
            return null;

            //from location1 to location2 on mm/dd/yyyy at hh:mm

        }

        public List<string> GetLocationEstimate(string inLocQuery)
        {
            List<string> rtnList = new List<string>();

            System.Threading.Tasks.Parallel.ForEach(_dataPreload.GeoDataTree["Canada"].Keys, currKey =>
            {
                if (currKey.ToLower().StartsWith(inLocQuery.ToLower()))
                    rtnList.Add(currKey);
            });

            return rtnList;
        }

        public Boolean HandleRequest(RideRequest inRideRequest_)
        {
            return _rideManager.UpdateRideRequest(inRideRequest_);
        }

        public Boolean SubmitReview(Review inReview_)
        {
            return _reviewManager.SubmitReview(inReview_);
        }

        public List<Review> GetReviews(FacebookUser inUser_, bool isHost_)
        {
            return _reviewManager.GetReviewsByUser(inUser_, isHost_);
        }
    }
}