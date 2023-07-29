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
                    <asp:Button class="gp-button" ID="bntCrearPartida" runat="server" Text="Asociar partidas a meta" OnClick="bntCrearPartida_Click" />
                    <asp:Button class="gp-button" ID="btnAsignarPresupuesto" runat="server" Text="Asignar presupuesto a una partida" OnClick="btnAsignarPresupuesto_Click" />
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
                <div style="margin-left: 25px;">



                    <div style="display: flex;">
                        <h3 class="Partida" style="margin-right: -70px">Departamentos</h3>
                        <h3 class="Presupuesto" style="margin-right: 300px">Metas</h3>
                    </div>


                    <div style="display: flex; margin-top: 5px;">
                        <div>
                            <asp:DropDownList runat="server" CssClass="input">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>

                        <div style="margin-left: 35.5%;">

                            <div>
                                <asp:DropDownList runat="server" CssClass="input">
                                    <asp:ListItem Text="text1" />
                                    <asp:ListItem Text="text2" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>



                    <div style="display: flex; margin-top: 100px">
                        <h3 class="Partida" style="margin-right: 10px">Partida</h3>
                        <h3 class="Presupuesto" style="margin-right: 10px">Presupuesto</h3>
                    </div>

                    <div style="display: flex; margin-top: 5px;">
                        <div>
                            <asp:DropDownList runat="server" CssClass="input">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>

                        <div style="margin-left: 35.5%;">

                            <asp:TextBox runat="server" ID="TextBox1" CssClass="input"></asp:TextBox>
                        </div>
                    </div>

                    <div style="margin-left: 35%; margin-top: 40px;">
                        <asp:Button runat="server" ID="btn_enviar_solicitud" Text="Asigna Presupuesto" CssClass="button enviar_solicitud" />

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
