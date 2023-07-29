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

                <div style="display:flex;">
                    <h3 class="Partida" style="margin-right:-70px">Departamentos</h3>
                    <h3 class="Presupuesto" style="margin-right:300px">Metas</h3>   
                </div>
                 
                 
                <div style="display:flex; margin-top:5px;">
                    <div>
                        <asp:DropDownList runat="server" CssClass="input">
                            <asp:ListItem Text="text1" />
                            <asp:ListItem Text="text2" />
                        </asp:DropDownList>
                    </div>
                    
                    <div style="margin-left:35.5%;">
                        
                         <div>
                        <asp:DropDownList runat="server" CssClass="input">
                            <asp:ListItem Text="text1" />
                            <asp:ListItem Text="text2" />
                        </asp:DropDownList>
                    </div>
                    </div>
                </div>

                    <div style="display:flex;margin-top:100px">
                    <h3 class="Partida" style="margin-right:10px">Partida</h3>
                    <h3 class="Presupuesto" style="margin-right:10px">Presupuesto</h3>   
                </div>
                 
                     <div style="display:flex; margin-top:5px;">
                    <div>
                        <asp:DropDownList runat="server" CssClass="input">
                            <asp:ListItem Text="text1" />
                            <asp:ListItem Text="text2" />
                        </asp:DropDownList>
                    </div>
                    
                    <div style="margin-left:35.5%;">
                        
                        <asp:TextBox runat="server" ID="TextBox1" CssClass="input"></asp:TextBox>
                    </div>
                </div>









                 <div style="margin-left:35%; margin-top:40px;">

                     <asp:Button runat="server" ID="btn_enviar_solicitud" Text="Asigna Presupuesto" CssClass="button enviar_solicitud"/>
                    
                 </div>
            </div>
        </form>
            </div>
        </div>

    </div>
</asp:Content>
