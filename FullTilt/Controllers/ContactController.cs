using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DotNetOpenAuth.OpenId.Extensions.AttributeExchange;
using FullTilt.Class;
using FullTilt.Models;

namespace FullTilt.Controllers
{
    public class ContactController : Controller
    {
        public ActionResult Index()
        {
            var model = new ContactViewModel();
            
            ViewBag.Message = "Your contact page.";
            return View(model);
        }
        
        [HttpPost]
        public ActionResult Index(ContactViewModel contactVM)
        {
            if (!ModelState.IsValid)
            {
                return View(contactVM);
            }

            var contact = new Contact
            {
                From = contactVM.From,
                To = contactVM.To,
                Subject = contactVM.Subject,
                Message = contactVM.Message
            };
            try
            {
                new Email().Send(contact);
            }
            catch(Exception e)
            {

                return RedirectToAction("Error", e);
            }            
            return RedirectToAction("ThankYou");
        }

        public ActionResult ThankYou()
        {
            return View();
        }
        
        public ActionResult Error(Exception e)
        {
            ViewBag.Error = e.Message;
            return View();
        }
    }
}
