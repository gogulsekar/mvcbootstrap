using MvcBootstrap.Models;
using MvcBootstrap.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Threading;
using System.Threading.Tasks;

namespace MvcBootstrap.Controllers
{
    public class CalculatorController : AsyncController
    {
        //
        // GET: /Calculator/

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public void AddAsync(CalculatorDataModel Data)
        {
            AsyncManager.OutstandingOperations.Increment();
            CalculatorService svc = new CalculatorService();
            svc.Completed += (sender, e) => {
                AsyncManager.Parameters["output"] = (e as ServiceEventArgs).Result.ToString();
                AsyncManager.OutstandingOperations.Decrement();
            };
            svc.AddAsync(Convert.ToInt32(Data.OperandLeft), Convert.ToInt32(Data.OperandRight));
            
        }

        public string AddCompleted(string output)
        {
            return output;
        }

        [HttpPost]
        public string Mul(CalculatorDataModel Data)
        {
            Data.Result = (Convert.ToInt32(Data.OperandLeft) * Convert.ToInt32(Data.OperandRight)).ToString();
            return Data.Result;
        }

    }
}
