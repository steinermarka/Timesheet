﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TimeSheet.Models;
using Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;

namespace TimeSheet.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Personnel()
        {
            Personnel p = new Personnel();
            p.User = Session["user"].ToString();

            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                p.IsAdmin = user.IsAdmin;
                p.IsManager = user.IsManager;
                var query = (user.IsManager && !user.IsAdmin) ? 
                                string.Format(Models.Worker.delegates, user.WorkerId) : Models.Worker.all;
                p.list = db.Fetch<Worker>(query);
            }
            return View(p);
        }

        public ActionResult Worker(int id)
        {
            WorkerView w = new WorkerView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        public ActionResult Impersonate(int id)
        {
            if (id > 0)
            {
                Session["admin"] = Session["user"];
                using (tsDB db = new tsDB())
                {
                    var user = db.FirstOrDefault<Worker>("where WorkerId = @0", id);
                    if (user == null)
                    {
                        Session.Remove("admin");
                        return RedirectToAction("Personnel", "Admin");
                    }
                    if (string.IsNullOrWhiteSpace(user.IonName)) 
                        Session["user"] = user.WorkerId.ToString();
                    else if (Session["user"].ToString().Contains(user.IonName))     // joker
                        Session.Remove("admin");
                    else
                        Session["user"] = user.WorkerId.ToString();
                }
            }
            else
            {
                Session["user"] = Session["admin"];
                Session.Remove("admin");
            }
            return RedirectToAction("Index", "Home");    
        }

        [HttpPost]
        public ActionResult SaveWorker(WorkerView wv)
        {
            wv.w.Save();
            return RedirectToAction("Personnel");
        }

        public ActionResult InternalNumbers()
        {
            InternalNumbers i = new InternalNumbers();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<InternalNumber>(string.Format(Models.InternalNumber.all, (int)ChargeTo.Internal_Order));
            }
            return View(i);
        }

        public ActionResult InternalNumber(int id)
        {
            NumberView w = new NumberView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SaveInternalNumber(NumberView nv)
        {
            nv.ino.Save();
            return RedirectToAction("InternalNumbers");
        }

        public ActionResult DeleteInternalNumber(InternalNumber ino)
        {
            ino.Delete();
            return RedirectToAction("InternalNumbers");
        }

        public ActionResult WorkAreas()
        {
            WorkAreas i = new WorkAreas();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<WorkArea>(string.Format(Models.WorkArea.all));
            }
            return View(i);
        }

        public ActionResult WorkArea(int id)
        {
            AreaView w = new AreaView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SaveWorkArea(AreaView nv)
        {
            nv.wa.Save();
            return RedirectToAction("WorkAreas");
        }

        public ActionResult Sites()
        {
            Sites i = new Sites();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<Site>(string.Format(Models.Site.all));
            }
            return View(i);
        }

        public ActionResult Site(int id)
        {
            SiteView w = new SiteView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SaveSite(SiteView nv)
        {
            nv.wa.Save();
            return RedirectToAction("Sites");
        }

        public ActionResult Partners()
        {
            Partners i = new Partners();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<Partner>(string.Format(Models.Partner.all));
            }
            return View(i);
        }

        public ActionResult Partner(int id)
        {
            PartnerView w = new PartnerView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SavePartner(PartnerView nv)
        {
            nv.wa.Save();
            return RedirectToAction("Partners");
        }

        public ActionResult CostCenters()
        {
            CostCenters i = new CostCenters();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<CostCenter>(string.Format(Models.CostCenter.all, (int)ChargeTo.Cost_Center));
            }
            return View(i);
        }

        public ActionResult CostCenter(int id)
        {
            CenterView w = new CenterView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SaveCostCenter(CenterView nv)
        {
            nv.cc.Save();
            return RedirectToAction("CostCenters");
        }

        public ActionResult DeleteCostCenter(CostCenter cc)
        {
            cc.Delete();
            return RedirectToAction("CostCenters");
        }

        public ActionResult Levels()
        {
            Levels i = new Levels();
            i.User = Session["user"].ToString();
            using (tsDB db = new tsDB())
            {
                var user = db.Single<Worker>("where workerid = @0", Session["WorkerId"]);
                i.IsAdmin = user.IsAdmin;
                i.IsManager = user.IsManager;
                i.list = db.Fetch<Level>(string.Format(Models.Level.all));
            }
            return View(i);
        }

        public ActionResult Level(int id)
        {
            LevelView w = new LevelView(id);
            w.User = Session["user"].ToString();
            w.IsAdmin = true;
            return View(w);
        }

        [HttpPost]
        public ActionResult SaveLevel(LevelView nv)
        {
            nv.lv.Save();
            return RedirectToAction("Levels");
        }

        public ActionResult DeleteLevel(Level cc)
        {
            cc.Delete();
            return RedirectToAction("Levels");
        }

        public ActionResult ExportXLS()
        {
            Export xp = new Export();
            xp.User = Session["user"].ToString();
            xp.IsAdmin = true;
            xp.start = DateTime.Today.AddDays(-(double)DateTime.Today.DayOfWeek-6);
            xp.end = DateTime.Today.AddDays(-(double)DateTime.Today.DayOfWeek);
            return View(xp);
        }

        [HttpPost]
        public ActionResult GetXLS(Export xp)
        {
            var template = Enum.GetName(typeof(Template), xp.type);
            var xl = new Application();
            xl.DisplayAlerts = false;
            Workbook wb = xl.Workbooks.Open(Server.MapPath(@"~/Content/"+template+".xls"));

            try { // Opening the Excel template
                switch (xp.type)
                {
                    case Template.Capital_Cost:
                        xp.capital(wb);
                        break;
                    case Template.Cross_Charge:
                        xp.expense(wb);
                        break;
                    case Template.Dash_Board:
                        xp.dashboard(wb);
                        break;
                }

                var named = Path.Combine(Server.MapPath(@"~/App_Data"), template + ".xls");
                wb.SaveAs(Filename: named, 
                            AccessMode: XlSaveAsAccessMode.xlNoChange, 
                            ConflictResolution: XlSaveConflictResolution.xlLocalSessionChanges,
                            FileFormat: XlFileFormat.xlWorkbookDefault);
                wb.Close();
                xl.Quit();
                Marshal.ReleaseComObject(xl);

                //MemoryStream ms = new MemoryStream(); // Writing the workbook content to the FileStream... 
                
                TempData["Message"] = "Excel report created successfully!"; // Sending the server processed data back to the user computer... 
                //return File(ms.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", template + ".xlsx");
                return File(named, "application/vnd.ms-excel", template + ".xls");
            } 
            catch(Exception ex) {
                Elmah.ErrorSignal.FromCurrentContext().Raise(new Exception("Export threw up", ex));
                return RedirectToAction("Index", "Home"); 
            } 
        }
    }
}
