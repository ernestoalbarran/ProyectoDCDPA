<%@ Page Title="DGCCH" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>DCDPA - Módulo PCEPI</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">

            <AnonymousTemplate>
                <p>Introduzca su Usuario y contraseña</p>
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:Login>
            </AnonymousTemplate>

            <LoggedInTemplate>
                <asp:LinkButton ID="btnAdmin" visible="false" runat="server" PostBackUrl="~/Interface/Administracion/administrador.aspx">Pantalla del Adminsitrador</asp:LinkButton>
                <asp:LinkButton ID="btnRegistroUsuarios" visible="false" runat="server" PostBackUrl="~/Account/Register">Registrar Usuarios</asp:LinkButton>
                <asp:LinkButton ID="lbtnPEC" runat="server" PostBackUrl="~/Interface/Jefe_Seccion/jefeSeccion.aspx">Pantalla del Jefe de Sección</asp:LinkButton>

              <!--  <div id="admin">
                <h3>Ventana del Administrador</h3>
                <ol class="round">
                    <li class="one">
                        <h5><a href="http://go.microsoft.com/fwlink/?LinkId=245146">Lemas</a></h5>
                    </li>
                    <li class="two">
                        <h5><a href="http://go.microsoft.com/fwlink/?LinkId=245147">Campos</a></h5>
                    </li>
                    <li class="three">
                        <h5><a href="http://go.microsoft.com/fwlink/?LinkId=245143">Periodos</a></h5>
                    </li>
                </ol>
                </div>-->
            </LoggedInTemplate>
        </asp:LoginView>

    </div>

</asp:Content>
