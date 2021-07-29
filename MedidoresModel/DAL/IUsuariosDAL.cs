using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface IUsuariosDAL
    {
        List<Usuario> ObtenerUsuarios();
        List<Usuario> ObtenerUsuarios(string estado);
        Usuario Obtener(int id);
        void AgregarUsuario(Usuario usuario);
        void EliminarUsuario(int id);

    }
}
