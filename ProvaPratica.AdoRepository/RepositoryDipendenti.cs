using ProvaPratica.Core.Entities;
using ProvaPratica.Core.Repository;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaPratica.AdoRepository
{
    public class RepositoryDipendenti : IDipendentiRepository
    {
        const string connectioString = @"Data Source = (localdb)\mssqllocaldb;" +
                                        "Initial Catalog = AcademyI.EsercitazioneFinale;" +
                                        "Integrated Security = true";
        public List<Dipendenti> GetItems()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectioString))
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand();
                    command.Connection = connection;
                    command.CommandType = System.Data.CommandType.Text;
                    command.CommandText = "select * from dbo.Dipendenti where Nome = @nome ";
                    //command.Parameters.AddWithValue("@nome", Nome);

                    SqlDataReader reader = command.ExecuteReader();

                    List<Dipendenti> dipendenti = new List<Dipendenti>();

                    while (reader.Read())
                    {
                        Dipendenti dipendente = new Dipendenti();
                        dipendente.Id = (int)reader["Id"];
                        dipendente.Nome = (string)reader["Nome"];

                        dipendenti.Add(dipendente);
                    }
                    return dipendenti;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
