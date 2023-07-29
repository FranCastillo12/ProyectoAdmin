<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SolicitudModificacionPresupuestaria.aspx.cs" Inherits="ProyectoAdmin.SolicitudModificacionPresupuestaria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Partidas Origen</h2>
        <form runat="server">
            <asp:GridView runat="server" ID="grid_partidas" CssClass="grid_solicitudes" OnRowCommand="grid_solicitudes_RowCommand" OnRowDataBound="grid_solicitudes_RowDataBound">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="ver_motivos" Text="Seleccionar" ControlStyle-CssClass="button ver_motivos" />
                </Columns>

            </asp:GridView>
        </form>
    </div>
    <div>
        <h2>Partidas Destino</h2>          
        <form runat="server">
            <asp:GridView runat="server" ID="grid_partidas2" CssClass="grid_solicitudes" OnRowCommand="grid_solicitudes_RowCommand" OnRowDataBound="grid_solicitudes_RowDataBound">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="ver_motivos" Text="Seleccionar" ControlStyle-CssClass="button ver_motivos" />
                </Columns>

            </asp:GridView>
        </form>
    </div>
</asp:Content>
