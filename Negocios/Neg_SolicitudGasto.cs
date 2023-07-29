using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class Neg_SolicitudGasto
    {
        public void RegistrarSoliGasto(string idDepartamento, string idUsuario, string idpartida,string motivo,string monto)
        {
            string spName = "";
            var lstParametros = new List<SqlParameter>()
            {
               new SqlParameter("@idDepartamento", idDepartamento),
              new SqlParameter("@idUsuario", idUsuario),
              new SqlParameter("@idpartida", idpartida),
              new SqlParameter("@motivo", motivo),
               new SqlParameter("@monto", monto),
            };
            Datos.ConexionSQL iConexion = new Datos.ConexionSQL();
            iConexion.ExecuteSPWithDT(spName, lstParametros);


        }

        public DataTable Partidas()
        {
            string spName = "";
            var lstParametros = new List<SqlParameter>()
            {
            };
            Datos.ConexionSQL iConexion = new Datos.ConexionSQL();
            return iConexion.ExecuteSPWithDT(spName, lstParametros);

        }




    }
}
