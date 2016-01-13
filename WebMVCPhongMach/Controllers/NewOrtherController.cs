using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using WebGrease.Css.Ast.Selectors;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class NewOrtherController : Controller
    {
        private PhongMachEntities db = new PhongMachEntities();
        // GET: NewOrther
        public ActionResult NewOrther()
        {
           
            return View();
        }
        public ActionResult NewOrtherPaging(string id)
        {
            var id_ = int.Parse(id.Split('-').Last());
            var dataNew = from data in db.tbl_new_PM
                          where data.Status_new_PM == 1 && data.Type_new_PM == id_ 
                          orderby data.ID_new_PM descending
                          select data;
            return PartialView("NewOrtherByID", dataNew.ToList().ToPagedList(pageNumber: 1, pageSize: 10));
        }
       
       
    }
}