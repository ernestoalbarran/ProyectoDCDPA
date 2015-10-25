<%@ Page Title="DGCCH" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    
    <!--
        <asp:LoginView ID="LoginView1" runat="server">
 
            <AnonymousTemplate>
                <div>
                <p>Introduzca su Usuario y contraseña</p>
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:Login>
                </div>
            </AnonymousTemplate>

            
            
            <LoggedInTemplate>
                <asp:LinkButton ID="btnAdmin" visible="false" runat="server" PostBackUrl="~/Interface/Administracion/administrador.aspx">Pantalla del Adminsitrador</asp:LinkButton>
                <asp:LinkButton ID="btnRegistroUsuarios" visible="false" runat="server" PostBackUrl="~/Account/Register">Registrar Usuarios</asp:LinkButton>
                <asp:LinkButton ID="lbtnPEC" runat="server" PostBackUrl="~/Interface/Jefe_Seccion/jefeSeccion.aspx">Pantalla del Jefe de Sección</asp:LinkButton>
                <asp:LinkButton ID="lbtnLemas" visible="false" runat="server" PostBackUrl="~/DefaultLema.aspx">Lemas</asp:LinkButton>
                 <asp:LinkButton ID="lbtnPeriodo" visible="false" runat="server" PostBackUrl="~/DefaultPeriodo.aspx">Alta Periodos</asp:LinkButton>
                <asp:LinkButton ID="lbtnCampos" visible="false" runat="server" PostBackUrl="~/DefaultCampos.aspx">Campos</asp:LinkButton>

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
                </div> //Aquiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
            </LoggedInTemplate>
        </asp:LoginView>

    -->

    <!--                           Login con Validación. Se la copie al Viiiiiiiiiiiiiiiiiic!         
        
                                  Solo no agregue el registrarse por que segun entiendo no lo manejamos
        
                 -->

    <h2>
        Iniciar sesión
    </h2>

    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Información de cuenta</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Mantenerme conectado</asp:Label>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Iniciar sesión" ValidationGroup="LoginUserValidationGroup"/>
                </p>
            </div>
        </LayoutTemplate>
    </asp:Login>

</asp:Content>
