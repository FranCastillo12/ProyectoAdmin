<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionPartidas.aspx.cs" Inherits="ProyectoAdmin.GestionPartidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link  href="Estilos/GestionPartidas.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server" class="flex-container">
        <div class="containter-img">
            <img class="image-decoration" src="https://images.unsplash.com/photo-1596679593281-41c14166a24a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=627&q=80" />
        </div>

        <div class="flex-container colum">
            <div id="containerCrearPartida" class="containerCrearPartida">
                <h3>Brian</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                </p>
            </div>
            <div id="containerAsignarPresupuestoPartida" class="containerAsignarPresupuestoPartida">
                <h3>Francisco</h3>
                <br />
                <br />

                <form runat="server">
             <div style="margin-left:25px;">

                <div class="containter-gridViewMetas">
                    <asp:GridView ID="gridViewPartidas" class="gridViewPartidas" runat="server" OnRowDataBound="gridViewPartidas_DataBound" OnRowCommand="gridViewPartidas_RowCommand">
                        <Columns>
                            <asp:ButtonField ControlStyle-CssClass="gridPartidas-button" Text="Asociar partida" ButtonType="Button" CommandName="SelectPartida"></asp:ButtonField>
                        </Columns>
                    </asp:GridView>
                </div>

            </div>
            <div id="containerAsignarPresupuestoPartida" class="containerAsignarPresupuestoPartida" runat="server">
                



                    <div style="display: flex;">
                        <h3 class="Partida" style="margin-right: -70px">Departamentos</h3> 
                    </div>


                  
                        <div class="container-dllDepartamentos">
                            <asp:DropDownList ID="ddlDepartamentosPresupuesto" runat="server" AutoPostBack="true" CssClass="ddlDepartamentos" OnSelectedIndexChanged="ddlDepartamentosPresupuesto_SelectedIndexChanged">
                              <asp:ListItem Text="Departamento de Recursos Humanos" Value="1 Recursos Humanos"></asp:ListItem>
                        <asp:ListItem Text="Departamento de TI" Value="2 TI"></asp:ListItem>
                        <asp:ListItem Text="Departamento de Finanzas" Value="3 Finanzas"></asp:ListItem>
                        <asp:ListItem Text="Departamento de Defensa" Value="4 Defensa"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </div>



                    <div class="containter-gridViewMetas">
                               <asp:GridView ID="gridmetaspresupuesto" class="gridViewMetas" runat="server" OnRowDataBound="gridmetaspresupuesto_RowDataBound" OnRowCommand="gridmetaspresupuesto_RowCommand">
                                    <Columns>
                                             <asp:ButtonField ControlStyle-CssClass="gridMetas-button" Text="Seleccionar" ButtonType="Button" CommandName="SelectMeta"></asp:ButtonField>
                                    </Columns>
                                </asp:GridView>
                    </div>

                  
                         <div class="containter-gridViewMetas">
                    <asp:GridView ID="gridMetasXPartida" class="gridViewPartidas" runat="server" OnRowCommand="gridMetasXPartida_RowCommand" OnRowDataBound="gridMetasXPartida_RowDataBound">
                        <Columns>
                            <asp:ButtonField ControlStyle-CssClass="gridPartidas-button" Text="Asociar partida" ButtonType="Button" CommandName="SelectPartida"></asp:ButtonField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="container-input"> 
                    <h3 class="Partida"  id="lblPresupuestoo" runat="server" style="margin-left: 450px;margin-top:30px;">Presupuesto</h3>
                    <asp:TextBox ID="txtPresupuesto" style="margin-left: 400px;" runat="server" CssClass="input" />
                   
                </div>
                
                <asp:Button  style="margin-left: 410px;" ID="btnAsignar_Presupuestoo" CssClass="button enviar_solicitud" Text="Asignar Presupuesto" runat="server" OnClick="btnAsignar_Presupuestoo_Click" />
             
            </div>
        </div>
    </div>

    </div>
</asp:Content>
