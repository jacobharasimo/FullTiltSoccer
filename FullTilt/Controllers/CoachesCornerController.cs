using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;

namespace FullTilt.Controllers
{
    public class CoachesCornerController : Controller
    {
        //
        // GET: /CoachesCorner/
        public ClientAccessService RestService = new ClientAccessService();
        public ActionResult Index(string Country, string Region, string Age)
        {            
            var selectAll = new SelectListItem {Text = "All",Value = "0"};
            ViewBag.WelcomeMessage = RestService.GetCmsData("CoachesCornerWelcome");
            
            var cItems = new List<SelectListItem> {selectAll};
            var rItems = new List<SelectListItem> {selectAll};
            var aItems = new List<SelectListItem> {selectAll};
            //var a = RestService.GetAllCoachesCornerByRegionAndAge("Albertal", "16");
            
            
            if(String.IsNullOrEmpty(Country))
            {
                Country = "All";
            }
            if (String.IsNullOrEmpty(Region))
            {
                Region = "All";
            }
            if (String.IsNullOrEmpty(Age))
            {
                Age = "All";
            }

            foreach (var n in RestService.GetAllCountries().Select(c => new SelectListItem{Text = c.CountryName,Value = c.CountryName}))
            {
                if(n.Text==Country)
                {
                    n.Selected = true;
                }
                cItems.Add(n);
            }      

            if(Country!="All")
            {
                foreach (var n in RestService.GetAllRegionsByCountry(Country).Select(c => new SelectListItem { Text = c.RegionName, Value = c.RegionName }))
                {
                    if (n.Text == Region)
                    {
                        n.Selected = true;
                    }
                    rItems.Add(n);
                }                  
            }
            if(Region!="All")
            {
                for (var i = 10; i < 17; ++i)
                {
                    var n = new SelectListItem()
                    {
                        Text = i.ToString(CultureInfo.InvariantCulture),
                        Value = i.ToString(CultureInfo.InvariantCulture)
                    };
                    if (n.Text == Age)
                    {
                        n.Selected = true;
                    }
                    aItems.Add(n);
                }   
            }
            
                        
            ViewBag.Countries = cItems;
            ViewBag.Regions = rItems;
            ViewBag.Age = aItems;

            if(Country=="All")
            {
                ViewBag.CoachesCorner = RestService.GetAllCoachesCorner();
                return View();
            }

            if(Region=="All")
            {
                ViewBag.CoachesCorner = RestService.GetAllCoachesCornerByCountry(Country);
                return View();
            }

            if(Age=="All")
            {
                ViewBag.CoachesCorner = RestService.GetAllCoachesCornerByRegion(Region);                
                return View();
            }

            ViewBag.CoachesCorner = RestService.GetAllCoachesCornerByRegionAndAge(Region, Age);            
            return View();
        }
        
    }
}
