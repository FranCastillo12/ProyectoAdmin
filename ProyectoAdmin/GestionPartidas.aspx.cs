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
        #region "Metodos propios"
        private void CargarMetasPorDepartamento(string departamentoID)
        {
            // Si cambia de depto ocultar grids
            gridViewMetas.Visible = false;
            gridViewPartidas.Visible = false;

            //Implemantar logica para conexion a BD

            //Por el momento datos locales
            var listaMetas = new List<object>
                {
                    new { IDMeta = 1, Descripcion = "Meta 1" },
                    new { IDMeta = 2, Descripcion = "Meta 2" },
                    new { IDMeta = 3, Descripcion = "Meta 3" }
                };

            gridViewMetas.Visible = true;
            gridViewMetas.DataSource = listaMetas;
            gridViewMetas.DataBind();
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            containerAsignarPresupuestoPartida.Visible = false;
            if (!IsPostBack)
            {
                gridViewMetas.Visible = false;
                gridViewPartidas.Visible = false;
            }


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

        protected void dllDepartamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el valor seleccionado del DropDownList
            string departamentoID = dllDepartamentos.SelectedValue;

            // Almacenar el ID en una variable de sesión
            Session["DepartamentoID"] = departamentoID;

            // Llamar a un método que cargue las metas asociadas al departamento
            CargarMetasPorDepartamento(departamentoID);

        }


        protected void gridViewMetas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectMeta")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViewMetas.Rows[rowIndex];
                string metaID = row.Cells[1].Text; 

                // Almacenar el ID en una variable de sesión
                Session["MetaID"] = metaID;


                //Obtener el catalogo de partidas
                var catalogoPartidas = new List<object>
                {
                    new { IDPartida = 1, Descripcion = "Partida 1" },
                    new { IDPartida = 2, Descripcion = "Partida 2" },
                    new { IDPartida = 3, Descripcion = "Partida 3" }
                };

                //Recuperar partidas dela catalogo
                gridViewPartidas.DataSource = catalogoPartidas;
                gridViewPartidas.DataBind();
                gridViewPartidas.Visible = true;
            }
        }

        protected void gridViewPartidas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectPartida")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViewMetas.Rows[rowIndex];

                string partidaID = row.Cells[1].Text;
                var metaID = Session["MetaID"];
                var departamentoID= Session["DepartamentoID"];
                

                //Implementar logica para insertar relacion depto, meta, partida


                //Eliminar variables de session para evitar errores
                Session.Remove("MetaID");
                Session.Remove("DepartamentoID");
            }
        }



        protected void gridViewPartidas_DataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "Partida";
                e.Row.Cells[2].Text = "Descripción";
            }
        }
        protected void gridViewMetas_DataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "ID Meta";
                e.Row.Cells[2].Text = "Descripción";
            }
        }
    }
}