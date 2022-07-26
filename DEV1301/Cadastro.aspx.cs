using DEV1301.DAL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEV1301
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCadastrar_Click(object sender, EventArgs e)
        {
            txtEmail.BorderColor = Color.DarkBlue;
            txtNome.BorderColor = Color.DarkBlue;
            txtRepetirSenha.BorderColor = Color.DarkBlue;
            txtSenha.BorderColor = Color.DarkBlue;
            lbResultado.Visible = false;

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                lbResultado.Text = "Nome obrigatorio!";
                lbResultado.Visible = true;
                txtNome.BorderColor = Color.Red;
            }
            else if (string.IsNullOrEmpty(txtEmail.Text))
            {
                lbResultado.Text = "E-mail obrigatorio!";
                lbResultado.Visible = true;
                txtEmail.BorderColor = Color.Red;

            }
            else if (string.IsNullOrEmpty(txtSenha.Text))
            {
                lbResultado.Text = "Senha obrigatorio!";
                lbResultado.Visible = true;
                txtSenha.BorderColor = Color.Red;

            }
            else if (txtSenha.Text != txtRepetirSenha.Text)
            {
                lbResultado.Text = "As senhas não conferem!";
                lbResultado.Visible = true;
                txtSenha.BorderColor = System.Drawing.Color.Red;
                txtRepetirSenha.BorderColor = System.Drawing.Color.Red;
            }
            else
            {


                tabUsuario objUsuario = new tabUsuario();
                objUsuario.dataCadastro = DateTime.Now;
                objUsuario.email = txtEmail.Text;
                objUsuario.nome = txtNome.Text;
                objUsuario.senha = txtSenha.Text;

                UsuarioDAL usoDAL = new UsuarioDAL();
                usoDAL.CadastrarUsuario(objUsuario);
                lbResultado.Visible = true;
                txtEmail.Text = "";
                txtNome.Text = "";
                lbResultado.Text = "Cadastrado com sucesso!";

            }
            
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}