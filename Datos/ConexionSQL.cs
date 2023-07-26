using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Datos
{

    public class ConexionSQL
    {
        public SqlConnection sqlConn;
        public ConexionSQL()
        {
            sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionSQL"].ConnectionString);
        }
        public void QueryDB(string QuerySQL)
        {
            try
            {
                // Se indica la consulta que se desea realizar
                SqlCommand cmd = new SqlCommand(QuerySQL)
                {
                    Connection = this.sqlConn
                };
                // Se abre conexion con la base de datos
                sqlConn.Open();

                // Ejecuta la consulta de la base de datos
                cmd.ExecuteNonQuery();

                // Se cierra la conexion
                sqlConn.Close();
            }
            catch (SqlException sql)
            {
                if (sqlConn.State == ConnectionState.Open)
                    sqlConn.Close();
                throw sql;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable QueryDBWithDT(string QuerySQL)
        {
            try
            {
                // Indica la consulta que se desea hacer
                SqlCommand cmd = new SqlCommand(QuerySQL);
                cmd.Connection = this.sqlConn;


                // Objeeto para ejecutar la consulta
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                // Objeto para almacenar la informacion
                DataTable dtDatos = new DataTable();

                // Ejecuta la consulta
                adapter.Fill(dtDatos);

                return dtDatos;
            }
            catch (SqlException sql)
            {
                if (sqlConn.State == ConnectionState.Open)
                    sqlConn.Close();
                throw sql;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public void ExecuteSP(string SPName, List<SqlParameter> ListaParametros)
        {
            try
            {
                SqlCommand cmd = new SqlCommand()
                {
                    CommandType = CommandType.StoredProcedure,
                    CommandText = SPName,
                    Connection = this.sqlConn
                };

                foreach (SqlParameter sqlParam in ListaParametros)
                    cmd.Parameters.Add(sqlParam);


                sqlConn.Open();

                cmd.ExecuteNonQuery();

                sqlConn.Close();
            }
            catch (SqlException sql)
            {
                if (sqlConn.State == ConnectionState.Open)
                    sqlConn.Close();
                throw sql;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
