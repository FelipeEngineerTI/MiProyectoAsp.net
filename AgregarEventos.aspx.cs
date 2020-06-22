using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoTPS.BL;
namespace ProyectoTPS
{
    public partial class AgregarEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEvento_Click(object sender, EventArgs e)
        {
            try
            {
                Database1Entities1 db = new Database1Entities1();
                MantencionBL me = new MantencionBL();
                me.EditarMantencion(comboxMantencionEvento.SelectedIndex);
                db.SaveChanges();
            }
            catch (Exception es)
            {
                LbMessage.Text = es.Message.ToString();

            }
        }
    }
}