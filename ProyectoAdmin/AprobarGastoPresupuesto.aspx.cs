using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAdmin
{ //WebForm1
    public partial class AprobarGastoPresupuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Fecha del sistema
            string date = DateTime.UtcNow.ToLongDateString();
            fecha_actual.InnerText = date;

            //TEMPORAL PARA PRUEBAS DEL GRID VIEW: Los datos formatean al agregar los datos
            DataTable dt = new DataTable();
            dt.Columns.Add("idTransaccion", typeof(string));
            dt.Columns.Add("idDepartamento", typeof(string));
            dt.Columns.Add("idUsuario", typeof(string));
            dt.Columns.Add("idPartida", typeof(string));
            dt.Columns.Add("Motivo", typeof(string));
            dt.Columns.Add("FechaSolicitud", typeof(string));
            dt.Columns.Add("Monto", typeof(string));
            dt.Columns.Add("Estado", typeof(string));
            dt.Columns.Add("FechaRevision", typeof(string));

            if (!IsPostBack)
            {
                //Negocios.Neg_Extraordinario iExtraordinario = new Negocios.Neg_Extraordinario();

                //grid_solicitudes.DataSource = iExtraordinario.obtenerSolicutudes();
                grid_solicitudes.DataBind();
            }
        }

        protected void grid_solicitudes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                // establece los encabezados personalizados para cada columna
                e.Row.Cells[3].Text = "ID Transacción";
                e.Row.Cells[4].Text = "ID Departamento";
                e.Row.Cells[5].Text = "ID Usuario";
                e.Row.Cells[6].Text = "ID Partida";
                e.Row.Cells[7].Text = "Motivo";
                e.Row.Cells[8].Text = "Fecha Solicitud";
                e.Row.Cells[9].Text = "Monto";
                e.Row.Cells[10].Text = "Estado";
                e.Row.Cells[11].Text = "Fecha Revisión";
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[7].Text == "Rechazado")
                {
                    e.Row.Cells[7].ForeColor = Color.Red;
                }
                else if (e.Row.Cells[7].Text == "Aprobado")
                {
                    e.Row.Cells[7].ForeColor = Color.Green;
                }
                else
                {
                    e.Row.Cells[7].Text = "En progreso";
                    e.Row.Cells[7].ForeColor = Color.Orange;
                }

                DateTime fecha = Convert.ToDateTime(e.Row.Cells[6].Text);
                e.Row.Cells[6].Text = fecha.ToString("dd-MM-yyyy");
            }
        }

        protected void grid_solicitudes_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            String Estado = null;
            //Realizar las operaciones en BD 
            if (e.CommandName == "ver_motivos")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                String id = grid_solicitudes.Rows[index].Cells[3].Text;

                Response.Redirect($"DetallesSolicitud.aspx?ID={id}");
            }
            else if (e.CommandName == "rechazar_solicitud")
            {
                //Negocios.Neg_Extraordinario iExtraordinario = new Negocios.Neg_Extraordinario();
                int index = Convert.ToInt32(e.CommandArgument);
                String id = grid_solicitudes.Rows[index].Cells[3].Text;
                Estado = "Rechazado";
                //iExtraordinario.Cambio_Estado(id, Estado);

                Response.Redirect("~/AprobarGastoPresupuesto.aspx");
            }
            else if (e.CommandName == "aprobar_solicitud")
            {
                //Negocios.Neg_Extraordinario iExtraordinario = new Negocios.Neg_Extraordinario();
                int index = Convert.ToInt32(e.CommandArgument);
                String id = grid_solicitudes.Rows[index].Cells[3].Text;
                Estado = "Aprobado";

                String Departamento = grid_solicitudes.Rows[index].Cells[4].Text;
                //iExtraordinario.Cambio_Estado(id, Estado);
                string Monto = grid_solicitudes.Rows[index].Cells[5].Text;
                //iExtraordinario.AprobarExtraordinario(Departamento, Monto);

                Response.Redirect("~/AprobarGastoPresupuesto.aspx");
            }
        }
    }
}