<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoTPS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingrese sus datos</title>
     <link href="estilologin.css" rel="stylesheet" />
    <style type="text/css">
        .content {
            width: 313px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server">
                <LayoutTemplate>
                    <div class="login">
                        <div class="content">
                            <h1>Ingrese sus datos para continuar</h1>
                            <asp:TextBox class="field" placeholder="Usuario" ID="UserName" runat="server" ForeColor="Black" Width="290px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Ingrese User Name" ToolTip="User Name is required." ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br>
                            <asp:TextBox class="field" placeholder="Contraseña" ID="Password" runat="server" TextMode="Password" ForeColor="Black" Width="289px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Ingrese Contraseña" ToolTip="Password is required." ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br>
                            <asp:Button class="btn" ID="LoginButton" runat="server" CommandName="Login" Text="Ingresar" ValidationGroup="Login1" Width="98px"></asp:Button>
                            <br>
                            <br />
                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            <asp:HyperLink ID="HyperLink1" runat="server"><a href="AgregarUsuarios.aspx"><h1>Registrarse</h1></a></asp:HyperLink>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </form>
</body>
</html>
