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


            var b = RestService.GetRegionsByCountry(1);

            return View();
        }
    }
}
