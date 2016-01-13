using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class TypeNewController : Controller
    {
        private PhongMachEntities db = new PhongMachEntities();
        // GET: TypeNew
        public ActionResult TypeNew()
        {
            return View();
        }
       
    }
}