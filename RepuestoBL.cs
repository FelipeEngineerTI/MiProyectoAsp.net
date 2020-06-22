using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
namespace ProyectoTPS.BL
{
    [DataObject]
    public class RepuestoBL
    {
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void agregarRepuesto(string repuesto, int stockRepuesto, string tipoRepuesto)
        {
            db.Repuesto.Add(new Repuesto() { NombreRepuesto = repuesto, StockRepuesto = stockRepuesto, TipoRepuesto = tipoRepuesto});
            db.SaveChanges();
        
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Repuesto> GetRepuestos(string Maquinaria)
        {
            return (from rp in db.Repuesto where rp.Maquinaria.NombreMaquinaria == Maquinaria select rp).ToList();
        }
    }
}