<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AprobarGastoPresupuesto.aspx.cs" Inherits="ProyectoAdmin.AprobarGastoPresupuesto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/AprobarGastoPresupuesto.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bodyPagina">
        <di>
            <br />
            <br />
            <h2 class="FechaActual" runat="server" id="fecha_actual"></h2>

            <div>
                <form runat="server">
                    <asp:GridView runat="server" ID="grid_solicitudes" CssClass="grid_solicitudes" OnRowCommand="grid_solicitudes_RowCommand" OnRowDataBound="grid_solicitudes_RowDataBound">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="ver_motivos" Text="Ver Motivos" ControlStyle-CssClass="button ver_motivos" />
                            <asp:ButtonField ButtonType="Button" CommandName="rechazar_solicitud" Text="Rechazar" ControlStyle-CssClass="button rechazar" />
                            <asp:ButtonField ButtonType="Button" CommandName="aprobar_solicitud" Text="Aprobar" ControlStyle-CssClass="button aprobar" />
                        </Columns>

                    </asp:GridView>
                </form>
            </div>
        </di>
    </div>
</asp:Content>
