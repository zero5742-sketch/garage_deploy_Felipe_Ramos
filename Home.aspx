<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Garage_UI.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; margin-top: 40px;">
        <h1>¡Bienvenido a Gorage!</h1>
        <p style="font-size: 18px; color: #555;">Sistema de gestión y registro de eventos para nuestra productora.</p>
        <hr style="width: 50%; margin: 20px auto;" />
        
        <p>Utiliza el menú superior o los accesos para navegar por el sistema:</p>
        
        <div style="margin-top: 30px;">
            <asp:Button ID="btnIrEventos" runat="server" Text="Ver Listado de Eventos" PostBackUrl="~/ListarEventos.aspx" 
                CssClass="btn btn-primary" style="padding: 10px 20px; font-size: 16px;" />
        </div>
    </div>
</asp:Content>