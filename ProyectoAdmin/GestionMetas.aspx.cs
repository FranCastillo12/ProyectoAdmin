using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAdmin
{
    public partial class GestionMetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DllDepartamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el valor seleccionado del DropDownList
            string departamentoID = dllDepartamentosMetas.SelectedValue;

            // Almacenar el ID en una variable de sesión
            Session["DepartamentoID"] = departamentoID;


        }
    }
}