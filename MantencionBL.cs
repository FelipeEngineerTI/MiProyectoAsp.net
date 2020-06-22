using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ProyectoTPS.BL
{
    [DataObject]
    public class MantencionBL
    {
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarMantencion(string tituloMantencion, DateTime fechaEmision, DateTime fechaRealizacion, TimeSpan hora, string responsableMantencion, string tipoMantencion, string obsMantencion, string descMantencion)
        {
            db.Mantencion.Add(new Mantencion() { TituloMantencion = tituloMantencion, FechaEmisionMantencion = fechaEmision, FechaRealizacionMantencion = fechaRealizacion, HoraMantencion = hora, Responsable = responsableMantencion, TipoMantencion = tituloMantencion, ObservacionMantencion = obsMantencion, DescripcionMantencion = descMantencion });
            db.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Mantencion> GetMantenciones()
        {
            return (from m in db.Mantencion select m).ToList();

        }
        [DataObjectMethod(DataObjectMethodType.Update)]
        public Mantencion EditarMantencion( int idMantencion)
        {
            return (from m in db.Mantencion where m.IdMantencion == idMantencion select m).FirstOrDefault();
        }
        
        
    }
}