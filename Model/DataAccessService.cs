using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace FullTiltSoccerRS
{
    // Start the service and browse to http://<machine_name>:<port>/Service1/help to view the service's generated help page
    // NOTE: By default, a new instance of the service is created for each call; change the InstanceContextMode to Single if you want
    // a single instance of the service to process all calls.	
    [ServiceContract]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
    // NOTE: If the service is renamed, remember to update the global.asax.cs file
    public class DataAccessService
    {
        readonly FullTiltSoccerDataContext _dataConnection = new FullTiltSoccerDataContext();        

        [WebGet(UriTemplate = "GetAllActiveCoachesCorner?date={date}", ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllActiveCoachesCornerListingsResult> GetAllActiveCoachesCorner(DateTime date)
        {
            return new List<GetAllActiveCoachesCornerListingsResult>(_dataConnection.GetAllActiveCoachesCornerListings(date));
        }

        [WebGet(UriTemplate = "GetAllActiveTournaments?date={date}", ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllActiveTournamentsResult> GetAllActiveTournaments(DateTime date)
        {
            return new List<GetAllActiveTournamentsResult>(_dataConnection.GetAllActiveTournaments(date));
        }

        [WebGet(UriTemplate = "GetAllCoachesCornerListings", ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCoachesCornerListingsResult> GetAllCoachesCornerListings()
        {
            return new List<GetAllCoachesCornerListingsResult>(_dataConnection.GetAllCoachesCornerListings());
        }

        [WebGet(UriTemplate = "GetAllTournaments", ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllTournamentsResult> GetAllTournaments()
        {
            return new List<GetAllTournamentsResult>(_dataConnection.GetAllTournaments());
        }

        [WebGet(UriTemplate = "GetAllTournamentsByUser?ID={id}", ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllTournamentsByUserResult> GetAllTournamentsByUser(int? id)
        {
            return  new List<GetAllTournamentsByUserResult>(_dataConnection.GetAllTournamentsByUser(id));
        }

        [WebGet(UriTemplate = "GetCmsDataById?ID={id}", ResponseFormat = WebMessageFormat.Json)]
        public CmsData GetCmsDataById(string id)
        {           
            return _dataConnection.GetCMSDataById(id).First();
        }

        [WebGet(UriTemplate = "GetCoachesCornerRegionlisting?Date={currentDate}&Country={countryId}&Region={regionId}", ResponseFormat = WebMessageFormat.Json)]
        public List<GetCoachesCornerRegionListingResult> GetCoachesCornerRegionlisting(DateTime currentDate, int? countryId, int? regionId)
        {
            return new List<GetCoachesCornerRegionListingResult>(_dataConnection.GetCoachesCornerRegionListing(currentDate, countryId, regionId));
        }

        [WebGet(UriTemplate = "GetCoachesCornerRegionlistingByAge?Date={currentDate}&Country={countryId}&Region={regionId}&Age={age}", ResponseFormat = WebMessageFormat.Json)]
        public List<GetCoachesCornerRegionListingByAgeResult> GetCoachesCornerRegionlistingByAge(DateTime currentDate, int? countryId, int? regionId, int age)
        {                        
            return new List<GetCoachesCornerRegionListingByAgeResult>(_dataConnection.GetCoachesCornerRegionListingByAge(currentDate, countryId, regionId, age));
        }
       
    }
}
