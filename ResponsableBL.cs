using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
namespace ProyectoTPS.BL
{
    [DataObject]
    public class ResponsableBL
    {
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarResponsable(string nombreResponsable, string apellidoResponsable, string rutResponsable,string rolResponsable, int celularResponsable, string correoResponsable)
        {
            db.Responsable.Add(new Responsable() { NombreResponsable = nombreResponsable, ApellidoResponsable = apellidoResponsable, RutResponsable = rutResponsable, RolResponsable = rolResponsable, CelularResponsable = celularResponsable, CorreoResponsable = correoResponsable });
            db.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Responsable> GetResponsablesPorMantencion(int idMantencion)
        {
            return (from r in db.Responsable where r.Mantencion.IdMantencion == idMantencion select r).ToList();

        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Responsable> GetResponsables()
        {
            return (from rp in db.Responsable select rp).ToList();
        }

    }
}