using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
namespace ProyectoTPS.BL
{
    [DataObject]
    public class UsuarioBL
    {
        
        Database1Entities1 db = new Database1Entities1();
        [DataObjectMethod(DataObjectMethodType.Select)]
        public bool ValidarUsuarios(string username, string password)
        {
            List<Usuario> lista = (from u in db.Usuario where u.NombreUsuario == username && u.ContraseñaUsuario == password select u).ToList();
            return lista.Count() > 0;
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public Usuario GetUsuarioByUsername(string username)
        {
            return (from u in db.Usuario where u.NombreUsuario == username select u).FirstOrDefault();
        }
        public void AgregarUsuarios(string nombreUsuario,string contraseñaUsuario, string rutUsuario, string correoUsuario, int celularUsuario)
        {
            db.Usuario.Add(new Usuario() { NombreUsuario = nombreUsuario, RutUsuario = rutUsuario, CorreoUsuario = correoUsuario, ContraseñaUsuario = contraseñaUsuario, CelularUsuario = celularUsuario });
            db.SaveChanges();
        }
    }
}