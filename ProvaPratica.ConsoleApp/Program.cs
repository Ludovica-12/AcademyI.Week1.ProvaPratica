using ProvaPratica.AdoRepository;
using ProvaPratica.Core.BusinessLayer;
using System;

namespace ProvaPratica.ConsoleApp
{
    class Program
    {
        private static readonly IBusinessLayer bl = new BusinessLayer(new RepositoryDipendenti(), new RepositorySpese());
        static void Main(string[] args)
        {
            string name = DipName();
            //TODO: Avrei voluto creare un metodo nel bl che poteva autenticare un
            //dipendete e quindi verificare se fosse registrato o meno
                    



            //bl.FileRiepilogo();
        }

        private static string DipName()
        {
            Console.WriteLine("***Benvenuto!***");
            Console.WriteLine("Inserisci Nome");
            string nome = Console.ReadLine();

            while (string.IsNullOrEmpty(nome))
            {
                Console.WriteLine("Nome non valido");
            }

            return nome;
        }
    }
}
