using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
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
            if (!IsPostBack)
            {
                gridViewMetas.Visible = false;
                gridViewPartidas.Visible = false;
                lblPresupuestoo.Visible = false;
                txtPresupuesto.Visible = false;
                btnAsignar_Presupuestoo.Visible = false;
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

        #region "Francisco"
        //Aqui inicia todo lo relacionado con la asignacion de presupuestos
        protected void ddlDepartamentosPresupuesto_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el valor seleccionado del DropDownList
            string departamentoID = ddlDepartamentosPresupuesto.SelectedValue;

            // Almacenar el ID en una variable de sesión
            Session["DepartamentoID1"] = departamentoID;

            // Llamar a un método que cargue las metas asociadas al departamento
            CargarMetasPorDepartamentoPresupuesto(departamentoID);
        }

        protected void gridmetaspresupuesto_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "ID Meta";
                e.Row.Cells[2].Text = "Descripción";
            }
        }

        protected void gridmetaspresupuesto_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            //Al tocar el boton de la primera tabla debe traer las partidas relacionadas a una partidas
            if (e.CommandName == "SelectMeta")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridmetaspresupuesto.Rows[rowIndex];
                string metaID = row.Cells[1].Text;

                // Almacenar el ID en una variable de sesión
                Session["MetaID1"] = metaID;

                Negocios.Neg_GestionPartidas iGestionPartidas = new Negocios.Neg_GestionPartidas();
                var Departamento = Session["DepartamentoID1"];
                DataTable DtMetas = iGestionPartidas.PartidasXDepartamento(Departamento.ToString(), metaID);



                //Obtener el catalogo de partidas
                var catalogoPartidas = new List<object>
                {
                    new { IDPartida = 1, Descripcion = "Partida 1" },
                    new { IDPartida = 2, Descripcion = "Partida 2" },
                    new { IDPartida = 3, Descripcion = "Partida 3" }
                };

                //Recuperar partidas dela catalogo
                gridMetasXPartida.DataSource = DtMetas;
                gridMetasXPartida.DataBind();
                gridMetasXPartida.Visible = true;
            }
        }

        private void CargarMetasPorDepartamentoPresupuesto(string departamentoID)
        {
            //Traer todas la metas relacionadas con el departamento que se escogio
            // Si cambia de depto ocultar grids
            gridmetaspresupuesto.Visible = false;
            gridMetasXPartida.Visible = false;

            //Implemantar logica para conexion a BD

            //Numero de departamento que se escogio
            var Departamento = Session["DepartamentoID1"];

            Negocios.Neg_GestionPartidas iGestionPartidas = new Negocios.Neg_GestionPartidas();

       

            DataTable DtMetasXDepartamento = iGestionPartidas.MetasXDepartamento(Departamento.ToString());

            //Descompone el datable para agregarlo al 

            //Por el momento datos locales
            //var listaMetas = new List<object>
            //    {
            //        new { IDMeta = 1, Descripcion = "Meta 1" },
            //        new { IDMeta = 2, Descripcion = "Meta 2" },
            //        new { IDMeta = 3, Descripcion = "Meta 3" }
            //    };

            gridmetaspresupuesto.Visible = true;
            gridmetaspresupuesto.DataSource = DtMetasXDepartamento;
            gridmetaspresupuesto.DataBind();
        }

        protected void gridMetasXPartida_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectPartida")
            {
                lblPresupuestoo.Visible = true;
                txtPresupuesto.Visible = true;
                btnAsignar_Presupuestoo.Visible=true;
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridmetaspresupuesto.Rows[rowIndex];

                string partidaID = row.Cells[1].Text;
                Session["PartidaID"] = partidaID;
            }
        }

        protected void gridMetasXPartida_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[1].Text = "Partida";
                e.Row.Cells[2].Text = "Descripción";
            }
        }
        //Boton para registrar el presupuesto que se le dio al departamento
        protected void btnAsignar_Presupuestoo_Click(object sender, EventArgs e)
        {
            string presupuesto = txtPresupuesto.Text;
            var Departamento = Session["DepartamentoID1"];

            var Meta = Session["MetaID1"];
            var PartidaId = Session["PartidaID"];

            Negocios.Neg_GestionPartidas iGestionPartidas = new Negocios.Neg_GestionPartidas();

            iGestionPartidas.AsignarPresupuesto(Meta.ToString(),PartidaId.ToString(),Departamento.ToString(), presupuesto);


            //Enviar mensaje de exito
        }
        #endregion


    }
}