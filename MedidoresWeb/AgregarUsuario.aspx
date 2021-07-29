<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="MedidoresWeb.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt"> Nombre </label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese un Nombre Valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt"> Rut </label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="rutTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese un Rut Valido"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label for="correoTxt"> Correo </label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="correoTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese Correo Valido"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt"> Contraseña </label>
                        <asp:TextBox ID="contraseñaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="contraseñaTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese una contraseña Valida"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label for="estadoRb1">Estado</label>
                        <asp:RadioButtonList ID="estadoRb1" runat="server">
                            <asp:ListItem Text="Pagado" Selected="True" Value="Pagado"></asp:ListItem>
                            <asp:ListItem Text="Sin Pagar" Value="Sin Pagar"></asp:ListItem>
                        </asp:RadioButtonList>                       
                    </div>
                    <div class="form-group">
                        <label for="MedidorDDL"> Medidor </label>
                        <asp:DropDownList ID="medidorDDL" runat="server"></asp:DropDownList>
                    </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
