<%@ Page Title="DGCCH" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="WebApplication1.Principal" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="panel-body">
              <div class="row">
                <div class="col-md-2 col-lg-2 " align="center">
                    <img runat="server"  src="~/Images/dcdpa_logo.png" align="center" id="Inicio" />
                    <br>

                    //<!--  Parte Prueba variables de sesión-------------------------------->

                    <td >
                   Periodo
                     Id <asp:Label ID="lblProyecto" runat="server" Text="Label" ></asp:Label>
                      Nombre  <asp:Label ID="lblNombreProyecto" runat="server" Text="Label" ></asp:Label>

                </td>
                    <td >
                   Área
                   Id <asp:Label ID="lblArea" runat="server" Text="Label" ></asp:Label>
                   Nombre <asp:Label ID="lblNombreArea" runat="server" Text="Label" ></asp:Label>
                </td>

                    <td >
                   Plantel
                    Id<asp:Label ID="lblPlantel" runat="server" Text="Label" ></asp:Label>
                     Nombre   <asp:Label ID="lblNombrePlantel" runat="server" Text="Label" ></asp:Label>
                </td>

                    
                    
        //<!--  Parte Prueba variables de sesión-------------------------------->


                    <br>
                   
                </div>
            </div>
        </div>
</asp:Content>