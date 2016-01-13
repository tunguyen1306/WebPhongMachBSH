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
    public class DetailTypeController : Controller
    {
      
        private PhongMachEntities db = new PhongMachEntities();
        string name = "";
        // GET: DetailType
        public ActionResult DetailType(string id)
        {
            var id_ = int.Parse(id.Split('-').Last());
            if (id_ == 1)
            {
                name = "Vấn đề về tai";
            }
            if (id_ == 2)
            {
                name = "Vấn đề về mũi";
            }
            if (id_ == 3)
            {
                name = "Vấn đề về họng";
            }
           
            var dataNew = from data in db.tbl_new_PM
                          where data.Status_new_PM == 1  && data.Type_new_PM == id_
                          orderby data.ID_new_PM descending
                          select data;
            return PartialView("DetailType", dataNew.ToList());
        }

   

    }
}