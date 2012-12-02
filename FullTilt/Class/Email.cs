using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using FullTilt.Models;

namespace FullTilt.Class
{
    public class Email
    {
        public void Send(Contact contact)
        {
            MailMessage mail = new MailMessage(
                contact.From,
                contact.To,
                contact.Subject,
                contact.Message);

            new SmtpClient().Send(mail);
        }
    }
}