using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web.Mvc;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class AboutsController : Controller
    {
        // GET: Abouts
        public ActionResult Abouts()
        {
            return View();
        }

        public ActionResult success()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(EmailContact emailContact)
        {
          
                if (ModelState.IsValid)
                {
                    MailMessage mail = new MailMessage();
                    mail.To.Add("phongkhambacsihon@gmail.com");
                    mail.From = new MailAddress("mailtubenhnhan@gmail.com");
                    mail.Subject = "Tin Nhắn từ bệnh nhân";
                    string Body = ("Tên bệnh nhân: <br><h1>"+emailContact.Name+"</h1><br> Emai bệnh nhân : <h1>" + emailContact.Email_ + "</h1><br>" + " Số điện thoại bệnh nhân : <h1>" + emailContact.Phone + "</h1><br>" + " Nộ dung tin nhắn : <h1>" + emailContact.content + "</h1>");
                    mail.Body = Body;
                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new System.Net.NetworkCredential
                    ("mailtubenhnhan@gmail.com", "Doilanhuthe1");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    return View("success");

                }

            return View(emailContact);
        }
    }
}