<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SolicitudModificacionPresupuestaria.aspx.cs" Inherits="ProyectoAdmin.SolicitudModificacionPresupuestaria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/SolicitudModificacionPresupuestaria.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 class="origen">Partidas Origen</h2>
        <asp:GridView runat="server" ID="grid_partidas" CssClass="grid_partidas" OnRowCommand="grid_origen_RowCommand">
            <%--OnRowDataBound="grid_partidas_RowDataBound"--%>
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="origen" Text="Seleccionar" ControlStyle-CssClass="button selec" />
            </Columns>

        </asp:GridView>
    </div>
    <div>
        <h2 class="destino2">Partidas Destino</h2>
        <asp:GridView runat="server" ID="grid_partidas2" CssClass="grid_partidas" OnRowCommand="grid_destino_RowCommand">
            <%--OnRowDataBound="grid_partidas_RowDataBound2"--%>
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="destino" Text="Seleccionar" ControlStyle-CssClass="button selec" />
            </Columns>

        </asp:GridView>
    </div>
    <div class="form">
        <br />
        <br />
        <div style="margin-left: 25px;">

            <div style="display: flex">
                <h3 class="origen" style="margin-right: 10px">Partida Origen</h3>
                <h3 class="destino" style="margin-right: 10px">Partida Destino</h3>
            </div>


            <div style="display: flex; margin-top: 5px;">
                <div>
                    <asp:TextBox runat="server" ID="txtorigen" CssClass="input" disabled="true" required="true"></asp:TextBox>
                </div>

                <div style="margin-left: 43.5%;">
                    <asp:TextBox runat="server" ID="txtdestino" CssClass="input" disabled="true" required="true"></asp:TextBox>
                </div>
            </div>

            <div style="margin-top: 50px;">
                <h3 class="monto" style="margin-right: 10px">Monto</h3>
                <div style="margin-top: 20px;">
                    <asp:TextBox runat="server" ID="txtmonto" CssClass="input" required="true"></asp:TextBox>
                </div>
            </div>
            <asp:Literal ID="msj" runat="server"></asp:Literal>

            <div style="margin-left: 35%; margin-top: 40px;">

                <asp:Button runat="server" ID="btn_enviar_solicitud" Text="Enviar Solicitud​" CssClass="button enviar_solicitud" OnClick="btn_enviar_solicitud_Click" />

            </div>
        </div>
    </div>
</asp:Content>
