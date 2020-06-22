using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoTPS
{
    public partial class Responsable
    {
        public string NombreApellidoResponsableParaDropDown
        {
            get { return string.Format("{0} {1}", NombreResponsable, ApellidoResponsable); }
        }
    }
}