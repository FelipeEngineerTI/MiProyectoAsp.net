<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuarios.aspx.cs" Inherits="ProyectoTPS.AgregarUsuarios" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrese</title>
        <link href="estilologin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Ingrese sus datos</h1>
<div>
    <br /></div><div><asp:TextBox class="field" placeholder="Nombre" ID="TxtNombre" runat="server" Width="292px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Ingrese Nombre" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        <div><asp:TextBox class="field" id="Password" placeholder="Contraseña" textmode="Password" runat="server" Width="289px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Ingrese Contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        <div><asp:TextBox class="field" id="txtRutUsuario" placeholder="RUT 12345678-9" runat="server" Width="289px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" ErrorMessage="Ingrese Contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        <div><asp:TextBox class="field" ID="txtCorreoUsuario" placeholder="Correo" runat="server" Width="290px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCorreoUsuario" ErrorMessage="Ingrese Correo" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /></div>
        <div><asp:TextBox class="field" ID="txtCelularUsuario" placeholder="Celular" runat="server" Width="290px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCelularUsuario" ErrorMessage="Ingrese su Celular" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /></div>
        <div><asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" /></div>
        <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" ForeColor="White" NavigateUrl="~/Login.aspx"><br />Iniciar Sesión</asp:HyperLink>
        <asp:Label ID="LbMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
