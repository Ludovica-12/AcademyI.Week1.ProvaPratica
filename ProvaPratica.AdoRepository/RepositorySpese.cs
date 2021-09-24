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
    public class RepositorySpese : ISpeseRepository
    {
        const string connectioString = @"Data Source = (localdb)\mssqllocaldb;" +
                                        "Initial Catalog = AcademyI.EsercitazioneFinale;" +
                                        "Integrated Security = true";
        public List<Spese> GetItems()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectioString))
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand();
                    command.Connection = connection;
                    command.CommandType = System.Data.CommandType.Text;
                    command.CommandText = "select * from dbo.Spese " +
                                          "where Approvata is null";

                    SqlDataReader reader = command.ExecuteReader();

                    List<Spese> spese = new List<Spese>();

                    while (reader.Read())
                    {
                        Spese spesa = new Spese();
                        spesa.Id = (int)reader["Id"];
                        spesa.Data = Convert.ToDateTime(reader["Data"]);
                        spesa.Spesa = (double)reader["Spesa"];
                        spesa.Categoria = (_Categoria)reader["Categoria"];
                        spesa.Descrizione = (string)reader["Descrizione"];
                        spesa.IdDipendente = (int)reader["Dipendente"];

                        spese.Add(spesa);
                    }
                    return spese;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public void Update(Spese spesa)
        {
            using (SqlConnection connection = new SqlConnection(connectioString))
            {
                connection.Open();



                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandType = System.Data.CommandType.Text;
                command.CommandText = "update dbo.Spese set Approvata = @approvata, Rimborso = @rimborso, Approvatore = @approvatore where Id = @id";

                if (spesa.Spesa > 2500)
                {
                    command.Parameters.AddWithValue("@approvata", spesa.Approvata = false);
                    command.Parameters.AddWithValue("@rimborso", DBNull.Value);
                    command.Parameters.AddWithValue("@approvatore", DBNull.Value);
                    command.Parameters.AddWithValue("@id", spesa.Id);
                }
                else
                {
                    command.Parameters.AddWithValue("@approvata", spesa.Approvata);
                    command.Parameters.AddWithValue("@rimborso", spesa.Rimborso);
                    command.Parameters.AddWithValue("@approvatore", spesa.Approvatore);
                    command.Parameters.AddWithValue("@id", spesa.Id);
                }
                command.ExecuteNonQuery();
            }
        }
    }
}
