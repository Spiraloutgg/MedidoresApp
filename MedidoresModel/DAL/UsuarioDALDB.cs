using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class UsuarioDALDB : IUsuariosDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();
        public void AgregarUsuario(Usuario usuario)
        {
            this.medidoresDB.Usuarios.Add(usuario);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.medidoresDB.Usuarios.Find(id);
            this.medidoresDB.Usuarios.Remove(usuario);
            this.medidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidoresDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.medidoresDB.Usuarios.ToList();
        }

        public void Actualizar(Usuario a)
        {
            Usuario aOriginal = this.medidoresDB.Usuarios.Find(a.Id);
            aOriginal.Estado = a.Estado;
            aOriginal.Nombre = a.Nombre;
            this.medidoresDB.SaveChanges();
        }

        public List<Usuario> ObtenerUsuarios(string estado)
        {
            var query = from a in this.medidoresDB.Usuarios
                        where a.Estado == estado
                        select a;
            return query.ToList();
        }
    }
}
