<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sesiones_Inf_Proy.aspx.cs" Inherits="WebApplication1.Members.SESIONES.sesiones_Inf_Proy" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
      <style type="text/css">
        .nuevoEstilo1 {
            font-family: Calibri;
            font-size: xx-large;
            align-content:center;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="panel-body">
              <div class="row">
                <div class="col-md-2 col-lg-2 " align="center">
                    <img runat="server"  src="~/Images/dcdpa_logo.png" align="center" id="Inicio" />
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="nuevoEstilo1" class=".col-xs-6 .col-sm-4" align="center">Página en Construcción <br /> Sesiones de Informes y Proyectos</div>
                </div>
            </div>
        </div>
</asp:Content>
