using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using DataAccess;



namespace FullTilt.Controllers
{
    public class TournamentController : Controller
    {
        public static string MaxLenght(string s, int lenght)
        {
            var result = s;
            if(s.Length>lenght)
            {
                result=s.Substring(0, lenght);
            }
            return result;
        }
        public ClientAccessService RestService = new ClientAccessService();
       
        public ActionResult Index(string Country)
        {
            
            ViewBag.Message = "Your tournament page.";
            ViewBag.Country = Country;
            var results = new List<GetAllRegionsByCountryResult>();
            switch (Country)
            {
                case "Canada":

                    results = RestService.GetAllRegionsByCountry("Canada");
                    break;
                case "United States":
                    results = RestService.GetAllRegionsByCountry("USA");
                    break;
                case "UK/Ireland":
                    results = RestService.GetAllRegionsByCountry("UK/Ireland");
                    break;
            }
            ViewBag.Regions = results.OrderBy(a => a.RegionName);            
            return View();
        }

        public ActionResult Region(string Region)
        {
            ViewBag.Message = "Your tournament page.";            
            ViewBag.Region = Region;
            ViewBag.Regions = RestService.GetFellowRegionsByRegion(Region).OrderBy(a => a.RegionName);            
            ViewBag.FreeTournaments = RestService.GetAllTournamentsByRegion(Region).Where(e => e.IsPaidListing == false);
            ViewBag.PaidTournaments = RestService.GetAllTournamentsByRegion(Region).Where(e => e.IsPaidListing == true);
            return View();
        }

        public ActionResult Details(Guid? TournamentID, bool? Layout)
        {            
            ViewBag.Message = "Tournament detail page.";
            if (Layout == null)
                Layout = true;
            ViewBag.UseLayout = Layout;
            ViewBag.Tournament = RestService.GetTournamentByTournamentID(TournamentID);
            return View();
        }       
    }
}
