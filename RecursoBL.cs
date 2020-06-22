using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace ProyectoTPS.BL
{
    [DataObject]
    public class RecursoBL
    {
        
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarRecursos(string nombreRecurso, string descripcionRecurso, int valorRecurso, DateTime fechaAdquision,int stockRecurso)
        {
            db.Recurso.Add(new Recurso() { NombreRecurso = nombreRecurso, DescripcionRecurso = descripcionRecurso, ValorRecurso = valorRecurso, FechaAdquision = fechaAdquision, Stock = stockRecurso });
            db.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Recurso> GetRecursosParaMantencion(int idMantencion)
        {
            return (from r in db.Recurso where r.Mantencion.IdMantencion == idMantencion select r).ToList();

        }
    }
}