using MedidoresModel;
using MedidoresModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresWeb
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IMedioresDAL medioresDAL = new MedidoresDALDB();
        private IUsuariosDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.medidorDDL.DataSource = this.medioresDAL.ObtenerMedidores();
                this.medidorDDL.DataTextField = "Modelo";
                this.medidorDDL.DataValueField = "Id";
                this.medidorDDL.DataBind();
            }
        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario usuario = new Usuario();
                usuario.Nombre = this.nombreTxt.Text.Trim();
                usuario.Rut = this.rutTxt.Text.Trim();
                usuario.Correo = this.correoTxt.Text.Trim();
                usuario.Contraseña = this.contraseñaTxt.Text.Trim();
                usuario.Estado = this.estadoRb1.SelectedValue;
                usuario.IdMedidor = Convert.ToInt32(this.medidorDDL.SelectedItem.Value);

                this.usuarioDAL.AgregarUsuario(usuario);
                Response.Redirect("MostrarUsuario.aspx");
            }
        }
    }
}