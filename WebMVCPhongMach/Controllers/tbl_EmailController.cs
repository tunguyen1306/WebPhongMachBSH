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
                using (var r = new StreamReader(Server.MapPath("~/Content/bacsihon.txt")))
                {
                    tbl_Email tbl_Email = db.tbl_Email.Find(id);
                    var mail = new MailMessage();
                    mail.To.Add(tbl_Email.Email);
                    mail.From = new MailAddress("admin@phongkhambacsihon.com");
                    mail.Subject =
                        "Phòng khám tai mũi họng bác sĩ Hớn Chuyên khám, tư vấn và điều trị các bệnh lý tai mũi họng ";
                    string Body = (r.ReadToEnd());
                    mail.Body = Body;
                    mail.IsBodyHtml = true;
                    var smtp = new SmtpClient();
                    smtp.Host = "phongkhambacsihon.com";
                    smtp.Port = 25;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential
                        ("admin@phongkhambacsihon.com", "Doilanhuthe1");

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
                     
                        select nameemail).ToList();

                foreach (tbl_Email namem in email)
                {
                    if (namem.Email.Contains(",")==false)
                    {
                        using (var r = new StreamReader(Server.MapPath("~/Content/bacsihon.txt")))
                        {
                            var mail = new MailMessage();
                            mail.To.Add(namem.Email);

                            mail.From = new MailAddress("admin@phongkhambacsihon.com");
                            mail.Subject =
                                "Phòng khám tai mũi họng bác sĩ Hớn Chuyên khám, tư vấn và điều trị các bệnh lý tai mũi họng ";
                            string Body = (r.ReadToEnd());
                            mail.Body = Body;
                            mail.IsBodyHtml = true;
                            var smtp = new SmtpClient();
                            smtp.Host = "phongkhambacsihon.com";
                            smtp.Port = 25;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential
                                ("admin@phongkhambacsihon.com", "Doilanhuthe1");
                           
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
