using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAdmin
{
    public partial class Solicitud_gasto_presupuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            Negocios.Neg_SolicitudGasto iGasto = new Negocios.Neg_SolicitudGasto();

            DataTable DTPartidas = iGasto.Partidas();


            ddlPartidas.DataSource = DTPartidas;
            ddlPartidas.DataTextField = "";
            ddlPartidas.DataValueField = "";
            ddlPartidas.DataBind();
            ddlPartidas.Items.Insert(0, new ListItem("Seleccione un bebé", "0"));
        }

        protected void btn_enviar_solicitud_Click(object sender, EventArgs e)
        {
            string partida = ddlPartidas.SelectedValue.ToString();

            string monto = txt_monto_solicitado.Text;

            string motivo = txt_motivos_solicitud.Text;

            string departamento = Session["DepartamentoIni"].ToString();


            string usuario = Session["DepartamentoIni"].ToString();



            Negocios.Neg_SolicitudGasto iGasto = new Negocios.Neg_SolicitudGasto();

            iGasto.RegistrarSoliGasto(departamento, usuario, partida, motivo, monto);
        }
    }
}