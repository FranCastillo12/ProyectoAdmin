<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionPartidas.aspx.cs" Inherits="ProyectoAdmin.GestionPartidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/GestionPartidas.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="flex-container">
        <div class="containter-img">
            <img class="image-decoration" src="https://www.vgrow.co/wp-content/uploads/2021/11/hero-12-1024x976.png" />
        </div>

        <div class="flex-container-colum">
            <div>
                <form runat="server" class="gp-buttons-conainter">
                    <asp:Button class="gp-button" ID="bntCrearPartida" runat="server" Text="Crear Partida" OnClick="bntCrearPartida_Click" />
                    <asp:Button class="gp-button" ID="btnAsignarPresupuesto" runat="server" Text="asignar presupuesto a meta" OnClick="btnAsignarPresupuesto_Click" />
                </form>
            </div>
            <div id="containerCrearPartida" class="containerCrearPartida" runat="server">
                <h3>Brian</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                </p>
            </div>
            <div id="containerAsignarPresupuestoPartida" class="containerAsignarPresupuestoPartida" runat="server">
                <h3>Francisco</h3>
                <p>
                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
                </p>
            </div>
        </div>
        
    </div>

</asp:Content>
