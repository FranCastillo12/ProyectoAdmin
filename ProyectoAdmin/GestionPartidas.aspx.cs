using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAdmin
{
    public partial class GestionPartidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            containerAsignarPresupuestoPartida.Visible = false;
        }



        protected void btnAsignarPresupuesto_Click(object sender, EventArgs e)
        {
            containerAsignarPresupuestoPartida.Visible = true;
            containerCrearPartida.Visible = false;
        }

        protected void bntCrearPartida_Click(object sender, EventArgs e)
        {
            containerAsignarPresupuestoPartida.Visible = false;
            containerCrearPartida.Visible = true;
        }
    }
}