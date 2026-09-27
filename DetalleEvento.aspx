<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleEvento.aspx.cs" Inherits="Garage_UI.DetalleEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Detalle del Evento</h2>
    <hr />

    <!-- Label para mostrar los mensajes de error o validación -->
    <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
    <br /><br />

    <!-- Panel o contenedor con los controles de tipo Label para mostrar la información -->
    <asp:Panel ID="pnlDetalle" runat="server">
        <p><strong>Nombre:</strong> <asp:Label ID="lblNombre" runat="server" /></p>
        <p><strong>Fecha:</strong> <asp:Label ID="lblFecha" runat="server" /></p>
        <p><strong>Dirección:</strong> <asp:Label ID="lblDireccion" runat="server" /></p>
        <p><strong>Precio:</strong> <asp:Label ID="lblPrecio" runat="server" /></p>
        <p><strong>Tipo de Evento:</strong> <asp:Label ID="lblTipo" runat="server" /></p>
        
        <!-- Campos dinámicos según el tipo -->
        <p><strong>Detalle 1:</strong> <asp:Label ID="lblExtra1" runat="server" /></p>
        <p><strong>Detalle 2:</strong> <asp:Label ID="lblExtra2" runat="server" /></p>
        
        <br />
        <asp:Button ID="btnVolver" runat="server" Text="Volver al Listado" PostBackUrl="~/ListarEventos.aspx" CssClass="btn btn-primary" />
    </asp:Panel>
</asp:Content>