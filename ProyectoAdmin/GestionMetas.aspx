<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionMetas.aspx.cs" Inherits="ProyectoAdmin.GestionMetas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/GestionMetas.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <formview>
        <fieldset>
            <div class="container-field">
                <label class="label-field">Titulo de la meta</label>
                <input class="input-field" type="text" />
            </div>

            <div class="container-field">
                <label class="label-field">Presupuesto</label>
                <input class="input-field" type="number" />
            </div>

            <div class="container-field">
                <label class="label-field">Seleccione un departamento</label>
                <div class="container-dllDepartamentos">
                    <asp:DropDownList ID="dllDepartamentosMetas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DllDepartamentos_SelectedIndexChanged" CssClass="ddlDepartamentos">
                        <asp:ListItem Text="Departamento de Recursos Humanos" Value="1 Recursos Humanos"></asp:ListItem>
                        <asp:ListItem Text="Departamento de TI" Value="2 TI"></asp:ListItem>
                        <asp:ListItem Text="Departamento de Finanzas" Value="3 Finanzas"></asp:ListItem>
                        <asp:ListItem Text="Departamento de Defensa" Value="4 Defensa"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
            </div>


        </fieldset>


    </formview>
</asp:Content>
