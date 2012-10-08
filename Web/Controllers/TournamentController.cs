using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace Web.Controllers
{
    public class TournamentController : Controller
    {
       /* public DataAccessService RestService = new DataAccessService();*/
        public ActionResult Index(string Country)
        {
            ViewBag.Message = "Your tournament page.";
            ViewBag.Country = Country;
            /*var results = new List<GetAllRegionsByCountryResult>();
            switch (Country)
            {
                case "Canada":
                    results = RestService.GetRegionsByCountry("Canada");
                    break;
                case "United States":
                    results = RestService.GetRegionsByCountry("USA");
                    break;
                case "UK/Ireland":
                    results = RestService.GetRegionsByCountry("UK/Ireland");
                    break;
            }
            ViewBag.Regions = results;*/
            
            return View();
        }
    }
}
