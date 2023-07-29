<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Solicitud_gasto_presupuesto.aspx.cs" Inherits="ProyectoAdmin.Solicitud_gasto_presupuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Solicitud_gasto_presupuesto.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <div class="bodyPagina">
        <br />
        <br />
        <h2 class="FechaActual" runat="server" id="fecha_actual"></h2>

        <form runat="server">
             <div style="margin-left:25px;margin-top:30px">

                <div style="display:flex">
                    <h3 class="solicitado" style="margin-right:10px">Monto a solicitar</h3>
                    <h3 class="fechaSolicitud" style="margin-right:10px">Fecha de Solicitud</h3>   
                </div>
                 
                 
                <div style="display:flex; margin-top:5px;">
                    <div>
                        <asp:DropDownList runat="server" CssClass="input">
                            <asp:ListItem Text="text1" />
                            <asp:ListItem Text="text2" />
                        </asp:DropDownList>
                       
                    </div>
                    
                    <div style="margin-left:43.5%;">
                       <asp:TextBox runat="server" ID="txt_monto_solicitado" CssClass="input"></asp:TextBox>
                    </div>
                </div>
                 
                 <div style="margin-top:50px;">
                     <h3 class="motivosSolicitud" style="margin-right:10px">Motivos de la solicitud</h3>
                     <div style="margin-top:20px;">
                         <asp:TextBox runat="server" ID="txt_motivos_solicitud" CssClass="input motivos_solocitud" TextMode="MultiLine"></asp:TextBox>
                     </div>
                 </div>

                 <div style="margin-left:35%; margin-top:40px;">

                     <asp:Button runat="server" ID="btn_enviar_solicitud" Text="Enviar Solicitud​" CssClass="button enviar_solicitud"/>
                    
                 </div>
            </div>
        </form>
    </div>













</asp:Content>
