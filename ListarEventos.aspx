 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarEventos.aspx.cs" Inherits="Garage_UI.ListarEventos" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Listado de Eventos de Gorage</h2>
    <hr />

    <!-- Label para mostrar los mensajes que vengan por la URL (Requerimiento iii) -->
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
    <br /><br />
    <!-- Tabla para mostrar los eventos registrados -->
    <!-- Tabla configurada con DataKeyNames="Id" y una columna por defecto para el detalle (Requerimiento i y iv) -->
    <asp:GridView ID="gvEventos" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <HeaderStyle BackColor="#008000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            <asp:BoundField DataField="Dirección" HeaderText="Dirección" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
            
          
            <asp:HyperLinkField Text="Ver Detalle" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="DetalleEvento.aspx?id={0}" HeaderText="Acciones" />
        </Columns>
    </asp:GridView>
</asp:Content>