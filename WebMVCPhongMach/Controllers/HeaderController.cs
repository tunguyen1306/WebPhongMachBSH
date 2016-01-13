using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMVCPhongMach.Models;

namespace WebMVCPhongMach.Controllers
{
    public class HeaderController : Controller
    {
       private   PhongMachEntities db=new PhongMachEntities();
        // GET: Header
       public ActionResult Header()
        {
            return View();
        }

      
    }
}
