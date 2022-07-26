<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DEV1301.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1> <br />
            <label>Usuario</label><br />
            <asp:TextBox ID ="txtUsuario" runat="server"></asp:TextBox><br />
            <label>Senha</label><br />
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>   <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> <br />
            <asp:Label ID="lbResultado" runat="server" Visible="false" ></asp:Label><br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastre-se" OnClick="btnCadastrar_Click" /><br />



        </div>
    </form>
</body>
</html>
