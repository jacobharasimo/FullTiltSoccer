using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FullTilt.Models
{
    public class ContactViewModel
    {
        readonly List<SelectListItem> _list = new List<SelectListItem>{                
                new SelectListItem { Value = "sales@fulltiltsoccer.com", Text = "Sales" },
                new SelectListItem { Value = "coaches@fulltiltsoccer.com", Text = "Coaches Corner" },
                new SelectListItem { Value = "camps@fulltiltsoccer.com", Text = "Camps Information" },
                new SelectListItem { Value = "tournament@fulltiltsoccer.com", Text = "Tournament Information" },
                new SelectListItem { Value = "info@fulltiltsoccer.com", Text = "General Information" }
            };

        [DataType(DataType.EmailAddress)]
        [Required(ErrorMessage = "Invalid email")]
        public string From { get; set; }

        public List<SelectListItem> ToList
        {
            get { return _list; }
        }
        
        [Required(ErrorMessage = "Please select a valid option")]
        public string To { get; set; }

        [Required(ErrorMessage = "Must not be empty")]
        public string Subject { get; set; }

        [Required(ErrorMessage = "Must not be empty")]
        public string Message { get; set; }

        
    }
}
