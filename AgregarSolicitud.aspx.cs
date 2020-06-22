using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoTPS.BL;
namespace ProyectoTPS
{
    public partial class AgregarSolicitud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRecurso_Click(object sender, EventArgs e)
        {
            try
            {
                Database1Entities1 db = new Database1Entities1();
                SolicitudBL sl = new SolicitudBL();
                ResponsableBL rs = new ResponsableBL();
                List<Responsable> ls = new List<Responsable>();
                Responsable r = new Responsable();
                if (TxtNombreSolicitante.Text.Trim().Equals("") || TxtFechaSolicitud.Text.Trim().Equals("") || TxtDescripcionSolicitud.Text.Trim().Equals(""))
                    return;
                else
                {
                    sl.AgregarSolicitud(TxtNombreSolicitante.Text.Trim(), Convert.ToDateTime(TxtFechaSolicitud), TimeSpan.Parse(comboxHoraSolicitud.SelectedItem.Text), comboxGruaSolicitud.SelectedItem.Text, TxtDescripcionSolicitud.Text.Trim(), "Por Determinar");
                    TxtDescripcionSolicitud.Text = "";
                    TxtFechaSolicitud.Text = "";
                    TxtNombreSolicitante.Text = "";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Solicitud Enviada');</script>");

                }
            }
            catch (Exception es)
            {
                LbMensaje.Text = es.Message.ToString();
            }
            
        }
    }
}