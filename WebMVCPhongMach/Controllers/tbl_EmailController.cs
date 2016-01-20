using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using PagedList;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class tbl_EmailController : Controller
    {
        private PhongMachEntities db = new PhongMachEntities();

        // GET: tbl_Email
        public ActionResult Index()
        {
            return View(db.tbl_Email.Where(x=>x.Email.Contains("tunguyen")).ToList().ToPagedList(pageNumber:1,pageSize:100));
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
                tbl_Email tbl_Email = db.tbl_Email.Find(id);
                MailMessage mail = new MailMessage();
                mail.To.Add(tbl_Email.Email);
                mail.From = new MailAddress("mailtubenhnhan@gmail.com");
                mail.Subject = "Tin Nhắn từ bệnh nhân";
                string Body = ("Tên bệnh nhân: <br><h1>" +"Tu Nguyen" + "</h1><br> Emai bệnh nhân : <h1>" +"tunguyen.it.dev@gmail.com" + "</h1><br>" + " Số điện thoại bệnh nhân : <h1>" + "0987654321" + "</h1><br>" + " Nộ dung tin nhắn : <h1>" + "Test" + "</h1>");
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
                return RedirectToAction("Index");

            }

            return View();
        }
        public ActionResult SendAll()
        {

            if (ModelState.IsValid)
            {
                var email = (from nameemail in db.tbl_Email where nameemail.ID_Email == 23444 select nameemail).ToList();
                foreach (var namem in email)
                {
                    
              
                MailMessage mail = new MailMessage();
                mail.To.Add(namem.Email);
                mail.From = new MailAddress("mailtubenhnhan@gmail.com");
                mail.Subject = "Tin Nhắn từ bệnh nhân";
                string Body = ("Tên bệnh nhân: <br><h1>" + "Tu Nguyen" + "</h1><br> Emai bệnh nhân : <h1>" + "tunguyen.it.dev@gmail.com" + "</h1><br>" + " Số điện thoại bệnh nhân : <h1>" + "0987654321" + "</h1><br>" + " Nộ dung tin nhắn : <h1>" + "Test" + "</h1>");
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
                return RedirectToAction("Index");
                }

            }

            return View();
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
