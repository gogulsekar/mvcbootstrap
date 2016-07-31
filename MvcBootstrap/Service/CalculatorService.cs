using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Threading;

namespace MvcBootstrap.Service
{
    public class CalculatorService
    {
        public EventHandler Completed;

        public CalculatorService()
        {

        }

        public async Task<int> AddAsync(int a, int b)
        {
            int output = await Task.Run(() => add(a, b));
            Completed(this, new ServiceEventArgs(output));
            return output;
        }

        private int add(int a, int b)
        {
            Thread.Sleep(10000);
            return a + b;
        }
    }

    public class ServiceEventArgs : EventArgs
    {
        public int Result { get; set; }
        public ServiceEventArgs(int value)
        {
            Result = value;
        }
    }
}