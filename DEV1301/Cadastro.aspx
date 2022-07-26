<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="DEV1301.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cadastro</h1>
            <label>Nome</label><br />
            <asp:TextBox ID="txtNome" runat="server" BorderColor="DarkBlue" /><br />
            <label>E-mail:</label><br />
            <asp:TextBox ID="txtEmail" runat="server" BorderColor="DarkBlue"></asp:TextBox><br />
            <label>Senha</label><br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" BorderColor="DarkBlue"></asp:TextBox><br />
            <label>Repetir Senha</label><br />
            <asp:TextBox ID="txtRepetirSenha" runat="server" TextMode="Password" BorderColor="DarkBlue">Digite a senha novamente!</asp:TextBox><br />
            <asp:Label ID="lbResultado" runat="server" Visible="false" ></asp:Label><br />
            <asp:Button ID="txtCadastrar" runat="server" Text="Cadastrar" OnClick="txtCadastrar_Click" BorderColor="DarkBlue"/> <br />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" BorderColor="DarkBlue"/> 

        </div>
    </form>
</body>
</html>
