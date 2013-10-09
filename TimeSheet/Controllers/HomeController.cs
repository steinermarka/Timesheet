﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TimeSheet.Models;

namespace TimeSheet.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            timesheetDB db = new timesheetDB();

            tblEmployee emp = db.FirstOrDefault<tblEmployee>("where ionname = @0", "steiner.ma");
            Sheet ts = new Sheet() { employee = emp };

            Calendar calendar = CultureInfo.InvariantCulture.Calendar;
            DateTime init = DateTime.Today.AddDays(-14);
            ts.weekNumber = calendar.GetWeekOfYear(
                init,
                CalendarWeekRule.FirstDay,
                DayOfWeek.Monday
            );
            int nextSunday = init.DayOfWeek == DayOfWeek.Sunday ? 0 : (7 - (int) init.DayOfWeek);
            ts.sunday = init.AddDays(nextSunday).ToString("mm/dd/yyyy");

            if (ts.User == "")
                ts.User = "Guy Lister";

            return View(ts);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
