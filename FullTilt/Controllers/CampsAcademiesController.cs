using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;

namespace FullTilt.Controllers
{
    public class CampsAcademiesController : Controller
    {
        //
        // GET: /CampsAcademies/
        public ClientAccessService RestService = new ClientAccessService(); 
        public ActionResult Index()
        {
            ViewBag.WelcomeMessage = RestService.GetCmsData("CampsAcademy");
            return View();
        }

    }
}
