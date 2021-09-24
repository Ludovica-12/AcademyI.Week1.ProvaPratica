using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaPratica.Core.Entities
{
    public class Spese
    {
        public int Id { get; set; }
        public DateTime Data { get; set; }
        public double Spesa { get; set; }
        public _Categoria Categoria { get; set; }
        public string Descrizione { get; set; }
        public int IdDipendente { get; set; }
        public bool? Approvata { get; set; }
        public double? Rimborso { get; set; }
        public _Approvatore? Approvatore { get; set; }
    }

    public enum _Categoria
    {
        Vitto = 1,
        Allogio = 2,
        Trasferta = 3,
        Altro = 4
    }

    public enum _Approvatore
    {
        Manager = 1,
        OperationManager = 2,
        CEO = 3
    }

}
