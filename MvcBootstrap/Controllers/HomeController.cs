using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcBootstrap.Controllers
{
    using Models;

    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            var dataModel = new DataModel
            {
                CalcDataModel = new CalculatorDataModel()
            };
            return View(dataModel);
        }

        public PartialViewResult Calculate()
        {
            CalculatorDataModel data = new CalculatorDataModel();
            return PartialView("Calculate", data);
        }

        [HttpPost]
        public string Add(CalculatorDataModel Data)
        {
            Data.Result = (Convert.ToInt32(Data.OperandLeft) + Convert.ToInt32(Data.OperandRight)).ToString();
            return Data.Result;
        }

        [HttpPost]
        public string Mul(CalculatorDataModel Data)
        {
            Data.Result = (Convert.ToInt32(Data.OperandLeft) * Convert.ToInt32(Data.OperandRight)).ToString();
            return Data.Result;
        }
    }
}
