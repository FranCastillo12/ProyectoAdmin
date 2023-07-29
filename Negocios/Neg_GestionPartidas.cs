using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class Neg_GestionPartidas
    {







        #region "Francisco"

        public DataTable MetasXDepartamento(string idDepartamento)
        {
            string spName = "";
            var lstParametros = new List<SqlParameter>()
            {
               new SqlParameter("@idDepartamento", idDepartamento),

            };
            Datos.ConexionSQL iConexion = new Datos.ConexionSQL();
            return iConexion.ExecuteSPWithDT(spName, lstParametros);

        }
        public DataTable PartidasXDepartamento(string idDepartamento,string meta)
        {
            string spName = "";
            var lstParametros = new List<SqlParameter>()
            {
               new SqlParameter("@idDepartamento", idDepartamento),
              new SqlParameter("@meta", meta)

            };
            Datos.ConexionSQL iConexion = new Datos.ConexionSQL();
            return iConexion.ExecuteSPWithDT(spName, lstParametros);

        }

        public void AsignarPresupuesto(string meta,string partida,string departamento,string presupuesto)
        {
            string spName = "";
            var lstParametros = new List<SqlParameter>()
            {
               new SqlParameter("@meta", meta),
              new SqlParameter("@partida", partida),
              new SqlParameter("@departamento", departamento),
              new SqlParameter("@presupuesto", presupuesto),

            };
            Datos.ConexionSQL iConexion = new Datos.ConexionSQL();
            iConexion.ExecuteSPWithDT(spName, lstParametros);
        }




        #endregion
    }
}
