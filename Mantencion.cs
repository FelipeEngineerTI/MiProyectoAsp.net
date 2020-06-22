using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoTPS
{
    public partial class Mantencion
    {
        public string FechaRealizacionMantencionGV
        {
            get { return string.Format("{0: dd-MM-yyyy}",FechaRealizacionMantencion); }
        }
        
    }
}