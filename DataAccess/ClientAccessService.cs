using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Script.Services;

namespace DataAccess
{
    // Start the service and browse to http://<machine_name>:<port>/Service1/help to view the service's generated help page
    // NOTE: By default, a new instance of the service is created for each call; change the InstanceContextMode to Single if you want
    // a single instance of the service to process all calls.	
    [ServiceContract]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
    // NOTE: If the service is renamed, remember to update the global.asax.cs file
    public class ClientAccessService
    {        
        [OperationContract]
        [WebGet(UriTemplate = "GetAllCampsBeforeDate?Date={date}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCampsBeforeDateResult> GetAllCampsBeforeDate(DateTime date)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllCampsBeforeDate(date);
            return new List<GetAllCampsBeforeDateResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllCampsPostsByUser?UserID={ID}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCampsPostsByUserResult> GetAllCampsPostsByUser(Guid? userID)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllCampsPostsByUser(userID);
            return new List<GetAllCampsPostsByUserResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllCoachesCornerByRegion?Region={region}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCoachesCornerByRegionResult> GetAllCoachesCornerByRegion(string region)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllCoachesCornerByRegion(region);
            return new List<GetAllCoachesCornerByRegionResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllCoachesCornerPostsByUser?UserID={ID}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCoachesCornerPostsByUserResult> GetAllCoachesCornerPostsByUser(Guid? userID)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllCoachesCornerPostsByUser(userID);
            return new List<GetAllCoachesCornerPostsByUserResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllCountries", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllCountriesResult> GetAllCountries()
        {
            var a = new MainDataDataContext();
            var result = a.GetAllCountries();
            return new List<GetAllCountriesResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllRegionsByCountry?Country={country}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllRegionsByCountryResult> GetAllRegionsByCountry(string country)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllRegionsByCountry(country);
            return new List<GetAllRegionsByCountryResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllTournamentPostsByUser?UserID={id}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllTournamentPostsByUserResult> GetAllTournamentPostsByUser(Guid? id)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllTournamentPostsByUser(id);
            return new List<GetAllTournamentPostsByUserResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetAllTournamentsByRegion?Region={region}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetAllTournamentsByRegionResult> GetAllTournamentsByRegion(string region)
        {
            var a = new MainDataDataContext();
            var result = a.GetAllTournamentsByRegion(region);
            return new List<GetAllTournamentsByRegionResult>(result);
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetTournamentByTournamentID?TournamentID={id}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public GetTournamentByTournamentIDResult GetTournamentByTournamentID(Guid? TournamentID)
        {
            var a = new MainDataDataContext();
            var result = a.GetTournamentByTournamentID(TournamentID).FirstOrDefault();
            return result;
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetCmsData?ID={id}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public string GetCmsData(string id)
        {
            var a = new MainDataDataContext();
            var result = a.GetCmsData(id).FirstOrDefault();
            return result.Data;
        }

        [OperationContract]
        [WebGet(UriTemplate = "GetFellowRegionsByRegion?Region={region}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public List<GetFellowRegionsByRegionResult> GetFellowRegionsByRegion(string region)
        {

            var a = new MainDataDataContext();
            var result = a.GetFellowRegionsByRegion(region);
            return new List<GetFellowRegionsByRegionResult>(result);
        }
        [WebGet(UriTemplate = "GetTournamentRaitingFromUser?TournamentID={tournamentID}&UserID={@userID}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public GetTournamentRaitingFromUserResult GetTournamentRaitingFromUser(Guid? tournamentID, Guid? userID)
        {

            var a = new MainDataDataContext();
            var result = a.GetTournamentRaitingFromUser(tournamentID, userID).FirstOrDefault();
            return result ?? new GetTournamentRaitingFromUserResult(){TournamentRaiting = 0};
            
        }
        [WebGet(UriTemplate = "GetAverageTournamentRating?TournamentID={tournamentID}", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        public GetAverageTournamentRatingResult GetAverageTournamentRating(Guid? tournamentID)
        {

            var a = new MainDataDataContext();
            var result = a.GetAverageTournamentRating(tournamentID).FirstOrDefault();
            return result;
        }
    }
}
