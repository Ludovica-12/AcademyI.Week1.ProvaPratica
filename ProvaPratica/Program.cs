using ProvaPratica.AdoRepository;
using ProvaPratica.Core.BusinessLayer;
using System;

namespace ProvaPratica
{
    class Program
    {
        private static readonly IBusinessLayer bl = new BusinessLayer(new RepositoryDipendenti(), new RepositorySpese());
        static void Main(string[] args)
        {
            //try
            //{
                bl.EseguiRimborso();
            //}
            //catch (Exception ex)
            //{

                //Console.WriteLine(ex.Message);
            //}
        }
    }
}
