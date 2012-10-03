using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace FullTiltRS
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
        public FulltiltDataClassesDataContext _dataConnection = new FulltiltDataClassesDataContext();

        

        [WebGet(UriTemplate = "GetRegionsByCountry?Country={id}", ResponseFormat = WebMessageFormat.Json)]
        public List<Region> GetRegionsByCountry(int? id)
        {
            var a = _dataConnection.Regions.Where(r => r.CountryID == id);

            return new List<Region>(a);            
        }
        
    }
}
