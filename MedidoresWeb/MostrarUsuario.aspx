<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="MedidoresWeb.MostrarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>   
        <asp:UpdatePanel   ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <div class="row"> 
        <div class="row mt-5">
            <div class="col-lg-6 mx-auto">
                <asp:DropDownList ID="estadoDD1" Enabled="false" runat="server" AutoPostBack="true" OnSelectedIndexChanged="estadoDDL_SelectedIndexChanged">
                    <asp:ListItem Text="Pagado" Selected="True" Value="Pagado"></asp:ListItem>
                    <asp:ListItem Text="Sin Pagar" Value="Sin Pagar"></asp:ListItem>
                </asp:DropDownList>
                <asp:CheckBox runat="server" ID="todosChx" Text="Todos" Checked="true"
                    AutoPostBack="true" OnCheckedChanged="todosChx_CheckedChanged" />
            </div>
        </div>
        <div class="row mt-5">
            <asp:GridView ID="grillaUsuario"
                CssClass="table table-hover table-bordered"
                AutoGenerateColums="false"
                ShowHeaderWhenEmpty="true"
                EmptyDataText="No Hay Registros"
                OnRowCommand="grillaUsuario_RowCommand"
                runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Rut" DataField="Rut" />
                    <asp:BoundField HeaderText="Correo" DataField="Correo"/>
                    <asp:BoundField HeaderText="Contraseña" DataField="Contraseña"/>
                    <asp:BoundField HeaderText="Medidor" DataField="Medidor.Modelo" />
                    <asp:BoundField HeaderText="Estado" DataField="Estado"/>
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-danger" runat="server"
                                CommandName="eliminar" Text="Eliminar"
                                CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
           </div>
          </div>
         </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>

