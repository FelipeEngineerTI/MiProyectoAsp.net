using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
namespace ProyectoTPS.BL
{
    [DataObject]
    public class MaquinariaBL
    {
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarMaquinaria(string nameMaquinaria, string typeMaquinaria, int numberMaquinaria, int yearMaquinaria, string marcaMaquinaria, string modelMaquinaria, int numberMotorMaquinaria, string rendiMaquinaria, int capacidadAceite, int capacidadCombustible)
        {
            db.Maquinaria.Add(new Maquinaria() { NombreMaquinaria = nameMaquinaria, TipoMaquinaria = typeMaquinaria, NumeroMaquinaria = numberMaquinaria, AñoMaquinaria = yearMaquinaria, MarcaMaquinaria = marcaMaquinaria, ModeloMaquinaria = modelMaquinaria, NumeroMotorMaquinaria = numberMotorMaquinaria, RendimientoMaquinaria = rendiMaquinaria, CapacidadAceiteMaquinaria = capacidadAceite, CapacidadCombustible = capacidadCombustible });
            db.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Maquinaria> GetMaquinarias()
        {
            return (from mq in db.Maquinaria select mq).ToList();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public Maquinaria GetMaquinariaPorNumeroMaquinaria(int numMaquinaria)
        {
            return (from mq in db.Maquinaria where mq.NumeroMaquinaria == numMaquinaria select mq).FirstOrDefault();
        }
    }
}