using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAdmin
{
    public partial class SolicitudModificacionPresupuestaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //llamar bd y llenar grids

                grid_partidas.DataBind();
                grid_partidas2.DataBind();
            }
        }
        //protected void grid_partidas_RowDataBound(object sender, GridViewCommandEventArgs e)
        //{

        //}
        //protected void grid_partidas_RowDataBound2(object sender, GridViewCommandEventArgs e)
        //{

        //}
        protected void grid_origen_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "origen")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                String id = grid_partidas.Rows[index].Cells[1].Text;
                txtorigen.Text = id;
            }
        }
        protected void grid_destino_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "destino")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                String id = grid_partidas2.Rows[index].Cells[1].Text;
                if (txtorigen.Text == "")
                {
                    msj.Text = "Primero seleciona una partida origen";
                }
                else if (txtorigen.Text == "2" && id == "5")
                {
                    msj.Text = "No puedes asignar presupuesto de una partida 2 a una 5";
                }
                else
                {
                    txtdestino.Text = id;
                }
                
            }
        }
        protected void btn_enviar_solicitud_Click(object sender, EventArgs e)
        {
            if (txtorigen.Text == "" || txtdestino.Text == "")
            {
                msj.Text = "Debe seleccionar una partida origen y destino";
            }
            else
            {
                //llamar bd
            }

        }
    }
}