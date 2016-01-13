using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using WebMVCPhongMach.Models;
namespace WebMVCPhongMach.Controllers
{
    public class DefaultController : Controller
    {
        private PhongMachEntities db =new PhongMachEntities();

        public ActionResult Default()
        {
         
            return View();
        }
        public PartialViewResult PartialDemo(int page=1,int pagesize=10)
        {
            var dataNew = (from datanew in db.tbl_new_PM where datanew.Status_new_PM == 1 &&(datanew.Type_new_PM == 1 || datanew.Type_new_PM == 2 || datanew.Type_new_PM == 3) orderby datanew.ID_new_PM descending select datanew).ToList();
            return PartialView("DefaultPaging",dataNew.ToPagedList(page, pagesize));
        }
       
       
    
    }
}