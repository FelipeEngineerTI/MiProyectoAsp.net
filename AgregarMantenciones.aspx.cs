using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoTPS.BL;
namespace ProyectoTPS
{
    public partial class AgregarMantenciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAgregarMantencion_Click(object sender, EventArgs e)
        {
            try
            {
                Database1Entities1 db = new Database1Entities1();
                MantencionBL mn = new MantencionBL();
                if (TxtTituloMantencion.Text.Trim().Equals("") || TxtFechaEmisionMantencion.Text.Trim().Equals("") || txtDescripcionMantencion.Text.Trim().Equals("") || comboxObservacion.Items.Equals(0) || comboxResponsable.Items.Equals(0) || comboxTipo.Items.Equals(0))
                    return;
                else
                {
                    mn.AgregarMantencion(TxtTituloMantencion.Text.Trim(), Convert.ToDateTime(TxtFechaEmisionMantencion.Text.Trim()), Convert.ToDateTime(TxtFechaRealizacion.Text.Trim()), TimeSpan.Parse(comboxHoraMantencion.SelectedItem.ToString()), comboxResponsable.SelectedItem.ToString(), comboxTipo.SelectedItem.ToString(), comboxObservacion.SelectedItem.ToString(), txtDescripcionMantencion.Text.Trim());
                    TxtTituloMantencion.Text = "";
                    TxtFechaEmisionMantencion.Text = "";
                    TxtFechaRealizacion.Text = "";
                    txtDescripcionMantencion.Text = "";
                    GVMantenciones.DataBind();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mantención Agregada Exitosamente');</script>");
                }
            }
            catch (Exception es)
            {
                LbMessage.Text = es.Message.ToString();
            }
        }
    }
}