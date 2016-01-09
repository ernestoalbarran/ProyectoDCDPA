<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultProyecto.aspx.cs" Inherits="PCEPI.DefaultProyecto" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 84px;
        }
        .auto-style2 {
            height: 91px;
        }
        .auto-style3 {
            height: 93px;
        }
        .auto-style4 {
            height: 94px;
        }
        .auto-style5 {
            height: 95px;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>Proyecto</h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
            <table class="table table-user-information">
            <tbody>
                <tr>
                    <td class="auto-style1"></td>
                    <td align="center" class="auto-style2" colspan="2">Grupo Nuevo</td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5">
                        <asp:CheckBoxList ID="ChBtnProy" runat="server" Height="77px">
                            <asp:ListItem Value="1" > Interárea</asp:ListItem>
                            <asp:ListItem Value="2">Interplantel</asp:ListItem>
                            <asp:ListItem Value="4">c/Profr. Asignatura</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btCrearGrupo" runat="server" Text="Crear Grupo Nuevo" OnClick="btCrearGrupo_Click" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
             
    </div>
    </div>
    </div>           
</div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
</asp:Content>

