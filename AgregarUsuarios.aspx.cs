using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoTPS.BL;
namespace ProyectoTPS
{
    public partial class AgregarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                Database1Entities1 db = new Database1Entities1();
                UsuarioBL us = new UsuarioBL();
                string nombreUsuario = User.Identity.Name;
                Usuario u = (from usa in db.Usuario where usa.NombreUsuario == nombreUsuario select usa).FirstOrDefault();
                if (TxtNombre.Text.Trim().Equals("") || Password.Text.Trim().Equals(""))
                    return;
                else
                {
                    us.AgregarUsuarios(TxtNombre.Text.Trim(), Password.Text.Trim(), txtRutUsuario.Text.Trim(), txtCorreoUsuario.Text.Trim(), Int32.Parse(txtCelularUsuario.Text.Trim()));
                    txtCelularUsuario.Text = "";
                    txtCorreoUsuario.Text = "";
                    TxtNombre.Text = "";
                    txtRutUsuario.Text = "";
                    Password.Text = "";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario Agregado Exitosamente');</script>");
                    // Response.Redirect("~/Login.aspx");

                }
            }
            catch (Exception es)
            {
                LbMessage.Text = es.Message.ToString();
            }
        }
    }
}