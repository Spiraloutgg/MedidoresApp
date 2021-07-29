﻿using MedidoresModel;
using MedidoresModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresWeb
{
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuarioDALDB();

        private void cargaGrilla()
        {
            List<Usuario> usuarios;
            if (this.todosChx.Checked)
            {
                usuarios = this.usuariosDAL.ObtenerUsuarios();
            }
            else
            {
                usuarios = this.usuariosDAL.ObtenerUsuarios(this.estadoDD1.SelectedItem.Value);
            }
            this.CargaGrilla(usuarios);
        }
        private void CargaGrilla(List<Usuario> usuarios) {
            this.grillaUsuario.DataSource = usuarios;
            this.grillaUsuario.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              this.cargaGrilla();
            }
        }

        protected void estadoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargaGrilla();
            //string estado = this.estadoDD1.SelectedValue;
            //List<Usuario> usuarios = this.usuariosDAL.ObtenerUsuarios(estado);
            //this.CargaGrilla(usuarios);
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            this.estadoDD1.Enabled = !this.todosChx.Checked;
            this.cargaGrilla();
        }

        protected void grillaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuariosDAL.EliminarUsuario(id);
                this.cargaGrilla();
            }
        }
    }
}