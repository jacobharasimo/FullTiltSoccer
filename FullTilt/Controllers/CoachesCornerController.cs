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
            var results = new object();
            ViewBag.WelcomeMessage = RestService.GetCmsData("CoachesCornerWelcome");
           var a = RestService.GetAllCoachesCornerByRegionAndAge("Albertal", "16");
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

            var cItems = new List<SelectListItem>();
            cItems.Add(new SelectListItem()
            {
                Text = "All",
                Value = "0"
            });
            var rItems = new List<SelectListItem>();
            rItems.Add(new SelectListItem()
            {
                Text = "All",
                Value = "0"
            });
            var aItems = new List<SelectListItem>();
            aItems.Add(new SelectListItem()
            {
                Text = "All",
                Value = "0"
            });

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
                foreach (var n in RestService.GetAllRegionsByCountry(Country).Select(c => new SelectListItem{Text = c.RegionName,Value = c.RegionName}))
                {
                    if (n.Text == Region)
                    {
                        n.Selected = true;
                    }
                    rItems.Add(n);
                }                
            }
            if (Region != "All")
            {                
                for (var i = 10; i < 17;++i )
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
            if(!string.IsNullOrEmpty(Age))
            {
                
            }
            else
            {
                if (!string.IsNullOrEmpty(Region))
                {
                    results = RestService.GetAllCoachesCornerByRegion(Region);
                }
                else
                {
                    if(!string.IsNullOrEmpty(Country))
                    {
                        results = RestService.GetAllCoachesCornerByCountry(Country);
                    }
                    else
                    {
                        results = RestService.GetAllCoachesCorner();
                    }
                }
            }
                        
            ViewBag.Countries = cItems;
            ViewBag.Regions = rItems;
            ViewBag.Age = aItems;
            ViewBag.CoachesCorner = results;

            return View();
        }
        
    }
}
