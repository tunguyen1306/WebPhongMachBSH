using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;
using PagedList;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class tbl_EmailController : Controller
    {
        private readonly PhongMachEntities db = new PhongMachEntities();

        // GET: tbl_Email
        public ActionResult Index()
        {
            return
                View(db.tbl_Email.Where(x => x.Email.Contains("tunguyen.it.dev@gmail.com")).ToList().ToPagedList(1, 100));
            //return View(db.tbl_Email.ToList());
        }

        // GET: tbl_Email/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Email tbl_Email = db.tbl_Email.Find(id);
            if (tbl_Email == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Email);
        }

        // GET: tbl_Email/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tbl_Email/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_Email,Email")] tbl_Email tbl_Email)
        {
            if (ModelState.IsValid)
            {
                db.tbl_Email.Add(tbl_Email);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_Email);
        }

        // GET: tbl_Email/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Email tbl_Email = db.tbl_Email.Find(id);
            if (tbl_Email == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Email);
        }

        // POST: tbl_Email/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_Email,Email")] tbl_Email tbl_Email)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_Email).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_Email);
        }

        // GET: tbl_Email/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Email tbl_Email = db.tbl_Email.Find(id);
            if (tbl_Email == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Email);
        }

        // POST: tbl_Email/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_Email tbl_Email = db.tbl_Email.Find(id);
            db.tbl_Email.Remove(tbl_Email);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // [HttpPost, ActionName("Send")]
        //[ValidateAntiForgeryToken]
        public ActionResult Send(int id)
        {
            if (ModelState.IsValid)
            {
                using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                {
                    tbl_Email tbl_Email = db.tbl_Email.Find(id);
                    var mail = new MailMessage();
                    mail.To.Add(tbl_Email.Email);
                    mail.From = new MailAddress("tien131091@gmail.com");
                    mail.Subject = "Refresh TV vừa tải lên video";
                    string Body = r.ReadToEnd();
                    mail.Body = Body;
                    mail.IsBodyHtml = true;
                    var smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential
                        ("tien131091@gmail.com", "Doilanhuthe1");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

            return RedirectToAction("Index");
        }


        public ActionResult SendAll()
        {
            if (ModelState.IsValid)
            {
                
                //tu23444
                //hoang84522
                List<tbl_Email> email =
                    (from nameemail in db.tbl_Email
                     where nameemail.ID_Email < 1000
                        select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",")==false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                        {
                            try
                            {
                                var mail = new MailMessage();
                                mail.To.Add(namem.Email);
                                mail.From = new MailAddress("tien131091@gmail.com");
                                mail.Subject = "Refresh TV vừa tải lên video";
                                string Body = r.ReadToEnd();
                                mail.Body = Body;
                                mail.IsBodyHtml = true;
                                var smtp = new SmtpClient();
                                smtp.Host = "smtp.gmail.com";
                                smtp.Port = 587;
                                smtp.UseDefaultCredentials = false;
                                smtp.Credentials = new NetworkCredential
                                    ("tien131091@gmail.com", "Doilanhuthe1");
                                smtp.EnableSsl = true;
                                smtp.Send(mail);
                            }
                            catch (Exception)
                            {
                                
                                throw;
                            }
                           
                        }
                    }
                }
            }

            return RedirectToAction("Index");
        }
        public ActionResult SendAll1()
        {
            if (ModelState.IsValid)
            {

                //tu23444
                //hoang84522
                List<tbl_Email> email =
                    (from nameemail in db.tbl_Email
                     where nameemail.ID_Email > 8000   &&   nameemail.ID_Email < 9000
                     select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",") == false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                        {
                            var mail = new MailMessage();
                            mail.To.Add(namem.Email);
                            mail.From = new MailAddress("refeshtv@gmail.com");
                            mail.Subject = "Refresh TV vừa tải lên video";
                            string Body = r.ReadToEnd();
                            mail.Body = Body;
                            mail.IsBodyHtml = true;
                            var smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.Port = 587;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential
                                ("refeshtv@gmail.com", "Doilanhuthe1");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }
                    }
                }
            }

            return RedirectToAction("Index");
        }
        public ActionResult SendAll2()
        {
            if (ModelState.IsValid)
            {

                //tu23444
                //hoang84522
                List<tbl_Email> email =
                    (from nameemail in db.tbl_Email
                     where nameemail.ID_Email > 7000 && nameemail.ID_Email < 8000
                     select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",") == false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                        {
                            var mail = new MailMessage();
                            mail.To.Add(namem.Email);
                            mail.From = new MailAddress("tantu1306@gmail.com");
                            mail.Subject = "Refresh TV vừa tải lên video";
                            string Body = r.ReadToEnd();
                            mail.Body = Body;
                            mail.IsBodyHtml = true;
                            var smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.Port = 587;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential
                                ("tantu1306@gmail.com", "Doilanhuthe1");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }
                    }
                }
            }

            return RedirectToAction("Index");
        }
        public ActionResult SendAll3()
        {
            if (ModelState.IsValid)
            {

                //tu23444
                //hoang84522
                List<tbl_Email> email =
                    (from nameemail in db.tbl_Email
                     where nameemail.ID_Email > 6000 && nameemail.ID_Email < 7000
                     select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",") == false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                        {
                            var mail = new MailMessage();
                            mail.To.Add(namem.Email);
                            mail.From = new MailAddress("mailorderthung@gmail.com");
                            mail.Subject = "Refresh TV vừa tải lên video";
                            string Body = r.ReadToEnd();
                            mail.Body = Body;
                            mail.IsBodyHtml = true;
                            var smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.Port = 587;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential
                                ("mailorderthung@gmail.com", "a1234@1234");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }
                    }
                }
            }

            return RedirectToAction("Index");
        }
        public ActionResult SendAll4()
        {
            if (ModelState.IsValid)
            {

                //tu23444
                //hoang84522
                List<tbl_Email> email =
                    (from nameemail in db.tbl_Email
                     where nameemail.ID_Email > 5000 && nameemail.ID_Email < 6000
                     select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",") == false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/refeshtv.txt")))
                        {
                            var mail = new MailMessage();
                            mail.To.Add(namem.Email);
                            mail.From = new MailAddress("quocminh1306@gmail.com");
                            mail.Subject = "Refresh TV vừa tải lên video";
                            string Body = r.ReadToEnd();
                            mail.Body = Body;
                            mail.IsBodyHtml = true;
                            var smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.Port = 587;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential
                                ("quocminh1306@gmail.com", "a1234@1234");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }
                    }
                }
            }

            return RedirectToAction("Index");
        }
        public ActionResult EmailResult()
        {
            return View(db.tbl_Email.ToList());
        }

        public ActionResult EmailTu()
        {
            return View();
        }

        public ActionResult EmailResultpa(int pagenum = 1, int pagesize = 10)
        {
            return View(db.tbl_Email.ToList().ToPagedList(pagenum, pagesize));
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
