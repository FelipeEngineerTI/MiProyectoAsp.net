//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoTPS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recurso
    {
        public int IdRecurso { get; set; }
        public string NombreRecurso { get; set; }
        public string DescripcionRecurso { get; set; }
        public Nullable<int> ValorRecurso { get; set; }
        public Nullable<System.DateTime> FechaAdquision { get; set; }
        public Nullable<int> Stock { get; set; }
    
        public virtual Mantencion Mantencion { get; set; }
    }
}
