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
    public class DetailController : Controller
    {
        private PhongMachEntities db = new PhongMachEntities();
        // GET: Detail
        public ActionResult Detail(string id)
        {
            var id_ = int.Parse(id.Split('-').Last());
            var dataNew = from data in db.tbl_new_PM
                          where data.Status_new_PM == 1 && data.ID_new_PM == id_ 
                          orderby data.ID_new_PM descending
                          select data;
            return PartialView("Detail", dataNew.ToList());
        }
    }
}