using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class EmailHoangController : Controller
    {
        private PhongMachEntities db = new PhongMachEntities();

        // GET: EmailHoang
        public ActionResult Index()
        {
            return View(db.tbl_Email.ToList());
        }

        // GET: EmailHoang/Details/5
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

        // GET: EmailHoang/Create
        public ActionResult Create()
        {
            return View();
        }
 public ActionResult EmailHoang()
        {
            return View();
        }
        // POST: EmailHoang/Create
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

        // GET: EmailHoang/Edit/5
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

        // POST: EmailHoang/Edit/5
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

        // GET: EmailHoang/Delete/5
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

        // POST: EmailHoang/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_Email tbl_Email = db.tbl_Email.Find(id);
            db.tbl_Email.Remove(tbl_Email);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Send(int id)
        {
            if (ModelState.IsValid)
            {
                using (var r = new StreamReader(Server.MapPath("~/Content/banlairai.txt")))
                {
                    tbl_Email tbl_Email = db.tbl_Email.Find(id);
                    var mail = new MailMessage();
                    mail.To.Add(tbl_Email.Email);
                    mail.From = new MailAddress("Banlairai@gmail.com");
                    mail.Subject = "Nước hoa xách tay Mỹ. Cam kết hàng chính hãng - Nếu không đúng hoàn tiền 100%";
                    string Body = r.ReadToEnd();
                    mail.Body = Body;
                    mail.IsBodyHtml = true;
                    var smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential
                        ("Banlairai@gmail.com", "@aA123456");
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
                     //where nameemail.ID_Email > 754
                     select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    using (var r = new StreamReader(Server.MapPath("~/Content/banlairai.txt")))
                    {
                        if (namem!=null)
                        {
                            if (namem.Email.Contains(",") == false)
                            {

                                var mail = new MailMessage();
                                mail.To.Add(namem.Email);
                                mail.From = new MailAddress("Banlairai@gmail.com");
                                mail.Subject =
                                    "Nước hoa xách tay Mỹ. Cam kết hàng chính hãng - Nếu không đúng hoàn tiền 100%";
                                string Body = (r.ReadToEnd());
                                mail.Body = Body;
                                mail.IsBodyHtml = true;
                                var smtp = new SmtpClient();
                                smtp.Host = "smtp.gmail.com";
                                smtp.Port = 587;
                                smtp.UseDefaultCredentials = false;
                                smtp.Credentials = new NetworkCredential
                                    ("Banlairai@gmail.com", "@aA123456");
                                smtp.EnableSsl = true;
                                smtp.Send(mail);
                            }
                        }
                    }
                }
            }

            return RedirectToAction("Index");
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
