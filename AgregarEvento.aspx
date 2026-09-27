<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarEvento.aspx.cs" Inherits="Garage_UI.AgregarEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Registrar Nuevo Evento</h2>
    <hr />

    <!-- Resumen de validación agrupado (Actividad 5) -->
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="AddEventoVG" ForeColor="Red" HeaderText="Por favor corrija los siguientes errores:" />
    <br />

    <!-- Selección de Tipo de Evento -->
    <p>
        <label>Tipo de Evento:</label><br />
        <asp:DropDownList ID="ddlTipoEvento" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoEvento_SelectedIndexChanged">
            <asp:ListItem Value="Seleccionar">Seleccionar</asp:ListItem>
            <asp:ListItem Value="Concierto">Concierto</asp:ListItem>
            <asp:ListItem Value="Exposición">Exposición</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="cpvTipo" runat="server" ControlToValidate="ddlTipoEvento" ValueToCompare="Seleccionar" 
            Operator="NotEqual" Type="String" ErrorMessage="Debe seleccionar un tipo de evento válido." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:CompareValidator>
    </p>

    <!-- Datos Generales -->

    <!-- Nombre -->
    <p>
        <asp:Label ID="texnombre" runat="server" Text="Nombre: "></asp:Label><br />
        <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="Nombre" 
            ErrorMessage="El campo Nombre es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
    </p>

    <!-- Fecha -->

    <p>
        <asp:Label ID="texfecha" runat="server" Text="Fecha: "></asp:Label><br />
        <asp:TextBox ID="Fecha" runat="server" TextMode="Date"></asp:TextBox>
    </p>
    
    <!-- Dirección -->

    <p>
        <asp:Label ID="texdireccion" runat="server" Text="Direccion: "></asp:Label><br />
        <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="Direccion" 
            ErrorMessage="El campo Dirección es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
    </p>
    
    <!-- Precio -->

    <p>
        <asp:Label ID="texprecio" runat="server" Text="Precio: "></asp:Label><br />
        <asp:TextBox ID="Precio" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="Precio" 
            ErrorMessage="El campo Precio es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revPrecio" runat="server" ControlToValidate="Precio" 
            ValidationExpression="^\d+$" ErrorMessage="El precio debe ser un valor numérico válido." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RegularExpressionValidator>
        <asp:CustomValidator ID="cvPrecio" runat="server" ControlToValidate="Precio" OnServerValidate="cvPrecio_ServerValidate" 
            ErrorMessage="El precio no cumple con el rango permitido para el tipo de evento." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:CustomValidator>
    </p>

    <!-- Panel Exposición -->
    <asp:Panel ID="pnlExposicion" runat="server" Width="100%" ForeColor="Black" Visible="false">
        <h3>Datos de la Exposición</h3>
        <p>
            <asp:Label ID="lblExpositor" runat="server" Text="Expositor: "></asp:Label><br />
            <asp:TextBox ID="txtExpositor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvExpositor" runat="server" ControlToValidate="txtExpositor" Enabled="false"
                ErrorMessage="El campo Expositor es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblCategoria" runat="server" Text="Categoría: "></asp:Label><br />
            <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="txtCategoria" Enabled="false"
                ErrorMessage="El campo Categoría es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
        </p>
    </asp:Panel>

    <!-- Panel Concierto -->
    <asp:Panel ID="pnlConcierto" runat="server" Width="100%" Visible="false">
        <h3>Datos del Concierto</h3>
        <p>
            <asp:Label ID="lblArtista" runat="server" Text="Artista: "></asp:Label><br />
            <asp:TextBox ID="txtArtista" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvArtista" runat="server" ControlToValidate="txtArtista" Enabled="false"
                ErrorMessage="El campo Artista es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblEstilo" runat="server" Text="Estilo: "></asp:Label><br />
            <asp:TextBox ID="txtEstilo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEstilo" runat="server" ControlToValidate="txtEstilo" Enabled="false"
                ErrorMessage="El campo Estilo es obligatorio." ForeColor="Red" ValidationGroup="AddEventoVG">*</asp:RequiredFieldValidator>
        </p>
    </asp:Panel>

    <!-- Botón Guardar -->
    <p>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar Evento" BorderStyle="Dotted" ValidationGroup="AddEventoVG" OnClick="btnGuardar_Click" />
    </p>
</asp:Content>