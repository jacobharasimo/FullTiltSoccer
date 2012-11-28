using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;

namespace FullTilt.Controllers
{
    public class HomeController : Controller
    {
        public ClientAccessService RestService = new ClientAccessService();
        public ActionResult Index()
        {
            ViewBag.Message = "Your site home";
            ViewBag.WelcomeMessage = RestService.GetCmsData("HomePageWelcome");
            return View();
        }                     
    }
}
