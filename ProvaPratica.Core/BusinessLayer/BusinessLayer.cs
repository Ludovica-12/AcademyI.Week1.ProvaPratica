using ProvaPratica.Core.Entities;
using ProvaPratica.Core.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaPratica.Core.BusinessLayer
{
    public class BusinessLayer : IBusinessLayer
    {
        private readonly IDipendentiRepository dipendentiRepo;
        private readonly ISpeseRepository speseRepo;

        public BusinessLayer(IDipendentiRepository dipendentiRepository, ISpeseRepository speseRepository  )
        {
            dipendentiRepo = dipendentiRepository;
            speseRepo = speseRepository;
        }

        public void EseguiRimborso()
        {           
            List<Spese> spese = new List<Spese>();
                        
            spese = speseRepo.GetItems();

            if(spese.Count() > 0)
            {
                foreach(var spesa in spese)
                {
                    if(spesa.Spesa <= 400)
                    {
                        spesa.Approvatore = _Approvatore.Manager;
                        spesa.Approvata = true;
                        CalcolaRimborso(spesa);
                    }
                    else if(spesa.Spesa > 400 && spesa.Spesa <= 1000)
                    {
                        spesa.Approvatore = _Approvatore.OperationManager;
                        spesa.Approvata = true;
                        CalcolaRimborso(spesa);
                    }
                    else if (spesa.Spesa > 1000 && spesa.Spesa < 2500)
                    {
                        spesa.Approvatore = _Approvatore.CEO;
                        spesa.Approvata = true;
                        CalcolaRimborso(spesa);
                    }
                    else if (spesa.Spesa > 2500)
                    {
                        spesa.Approvata = false;
                        //Console.WriteLine("Spesa non approvata");
                    }
                    else
                    {
                        Console.WriteLine("Non ci sono spese");
                    }

                    speseRepo.Update(spesa);
                }
            }
            
        }

        //public void FileRiepilogo()
        //{
        //    //List<Dipendenti> dipendenti = new List<Dipendenti>();
        //    //dipendenti = dipendentiRepo.GetItems();
        //}

        private void CalcolaRimborso(Spese spesa)
        {
            if(spesa.Categoria == _Categoria.Vitto)
            {
                spesa.Rimborso = spesa.Spesa * 70 / 100;
            }
            else if (spesa.Categoria == _Categoria.Allogio)
            {
                spesa.Rimborso = spesa.Spesa;
            }
            else if (spesa.Categoria == _Categoria.Trasferta)
            {
                spesa.Rimborso = (spesa.Spesa * 50/100) +50;
            }
            else if (spesa.Categoria == _Categoria.Altro)
            {
                spesa.Rimborso = spesa.Spesa * 10 / 100;
            }

        }
    }
}
