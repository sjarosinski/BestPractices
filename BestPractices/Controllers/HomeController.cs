using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BestPractices.Models;

namespace BestPractices.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var category = new Category() {Id = Guid.NewGuid(), Name = "MVC"};

            using (var dbContext = new BestPracticesEntities())
            {
                dbContext.Categories.Add(category);
                dbContext.SaveChanges();
            }

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}