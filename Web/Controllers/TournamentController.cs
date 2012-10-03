using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FullTiltRS;


namespace Web.Controllers
{
    public class TournamentController : Controller
    {
        public DataAccessService RestService = new DataAccessService();
        public ActionResult Index(string Country)
        {
            ViewBag.Message = "Your tournament page.";
            ViewBag.Country = Country;
            List<Region> results = new List<Region>();
            switch (Country)
            {
                case "Canada":
                    results = RestService.GetRegionsByCountry(1);
                    break;
                case "United States":
                    results = RestService.GetRegionsByCountry(2);
                    break;
                case "UK/Ireland":
                    results = RestService.GetRegionsByCountry(3);
                    break;
            }
            ViewBag.Regions = results;
            
            return View();
        }
    }
}
