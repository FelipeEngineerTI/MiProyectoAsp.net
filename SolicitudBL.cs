using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
namespace ProyectoTPS.BL
{
    [DataObject]
    public class SolicitudBL
    {
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarSolicitud(string nombreSolicitante, DateTime fechaSolicitud,TimeSpan horaSolicitud,string maquinariaMantener,string descriSolicitud,string responsable)
        {
            db.Solicitud.Add(new Solicitud() { NombreSolicitante = nombreSolicitante, FechaSolicitud = fechaSolicitud, HoraSolicitud = horaSolicitud, MaquinariaMantener = maquinariaMantener, DescripcionSolicitud = descriSolicitud, Responsable = responsable });
            db.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Solicitud> GetSolicituds(int idMantencion)
        {
            return (from s in db.Solicitud where s.Mantencion.IdMantencion == idMantencion select s).ToList();
                 
        }

    }
}