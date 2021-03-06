﻿<%@ Page Title="Registrar Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad" >
   
   
    <div class="panel panel-info">
    <div class="panel-heading">
    <hgroup class="title">

        <h1><%: Title %>.</h1>
        <h2>Use el formulario siguiente para crear una cuenta nueva.</h2>
    </hgroup>
    </div>
    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Es necesario que las contraseñas tengan al menos <%: Membership.MinRequiredPasswordLength %> caracteres.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Formulario de registro</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">Nombre de usuario</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" class="form-control input-lg" placeholder="Nombre de usuario"/>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">Dirección de correo electrónico</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" class="form-control input-lg" placeholder="Correo electrónico" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="El campo de dirección de correo es obligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control input-lg" placeholder="Contraseña" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirmar contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control input-lg" placeholder="Confirmar contraseña" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
                            </li>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="DropDownList1">Rol de usuario: </asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" ></asp:DropDownList>
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Crear nuevo usuario" class="btn btn-primary" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
        </div>
    </div>
</asp:Content>