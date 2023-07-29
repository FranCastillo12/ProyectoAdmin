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
                <div class="gp-buttons-conainter">
                    <asp:Button class="gp-button" ID="bntCrearPartida" runat="server" Text="Crear Partida" OnClick="bntCrearPartida_Click" />
                    <asp:Button class="gp-button" ID="btnAsignarPresupuesto" runat="server" Text="asignar presupuesto a meta" OnClick="btnAsignarPresupuesto_Click" />
                </div>
            </div>
            <div id="containerCrearPartida" class="containerCrearPartida" runat="server">
                <p>
                    Por favor, seleccione uno de los departamentos disponibles con el fin de asociar las metas correspondientes a las partidas mostradas en el catálogo desplegable. Esta acción es fundamental para dar inicio al proceso de creación de una partida.
                </p>


                    <div class="container-dllDepartamentos">
                        <asp:DropDownList ID="dllDepartamentos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dllDepartamentos_SelectedIndexChanged" CssClass="ddlDepartamentos">
                            <asp:ListItem Text="Departamento de Recursos Humanos" Value="1 Recursos Humanos"></asp:ListItem>
                            <asp:ListItem Text="Departamento de TI" Value="2 TI"></asp:ListItem>
                            <asp:ListItem Text="Departamento de Finanzas" Value="3 Finanzas"></asp:ListItem>
                            <asp:ListItem Text="Departamento de Defensa" Value="4 Defensa"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>

                    <div class="containter-gridViewMetas">
                        <asp:GridView ID="gridViewMetas" class="gridViewMetas" runat="server" OnRowDataBound="gridViewMetas_DataBound" OnRowCommand="gridViewMetas_RowCommand">
                            <Columns>
                                <asp:ButtonField ControlStyle-CssClass="gridMetas-button" Text="Seleccionar" ButtonType="Button" CommandName="SelectMeta"></asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                    </div>

                <div class="containter-gridViewMetas">
                    <asp:GridView ID="gridViewPartidas" class="gridViewPartidas" runat="server" OnRowDataBound="gridViewPartidas_DataBound" OnRowCommand="gridViewPartidas_RowCommand">
                            <Columns>
                                <asp:ButtonField ControlStyle-CssClass="gridPartidas-button" Text="Asociar partida" ButtonType="Button" CommandName="SelectPartida"></asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                    </div>

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
