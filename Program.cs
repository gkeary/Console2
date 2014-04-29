using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console2
{
    class Program
    {
        static void Main(string[] args)
        {
            GetRoutes();
            Console.ReadLine();
            GetDrivers();
            Console.ReadLine();
        }

        private static void GetDrivers()
        {
            using (var context = new D3Context())
            {
                var drivers = context.Drivers.ToList();
                foreach (var dd in drivers)
                {
                    Console.WriteLine(String.Format("{0} {1}", dd.FirstName, dd.LastName));
                }
            }
        }

        private static void GetRoutes()
        {
            using (var context = new D3Context())
            {
                var routes = context.Routes.ToList();
                foreach (var rr in routes)
                {
                    Console.WriteLine(rr.RouteName);
                }
            }
        }
    }
}
