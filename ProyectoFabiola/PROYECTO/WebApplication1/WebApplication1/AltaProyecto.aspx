<%@ Page Title="DGCCH" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaProyecto.aspx.cs" Inherits="WebApplication1.AltaProyecto" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 107px;
        }
        #TextArea1 {
            height: 144px;
            width: 440px;
        }
        #TextArea2 {
            height: 158px;
            width: 436px;
        }
        .auto-style3 {
        }
        .auto-style5 {
            width: 169px;
        }
        .auto-style6 {
            width: 25px;
        }
    </style>
</asp:Content>

 
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>Alta Proyectos</h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                     <table class="table table-user-information">
                     <tbody>
                         <tr>
               
                <td >
                   Plantel 
                    <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
                </td>
                <td class="auto-style5">
                    Grupo<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    Proyectos 
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Número de oficio*</td>
                <td colspan=2>CCH/DIR/<asp:TextBox ID="TextBox1" runat="server" Width="39px"></asp:TextBox>/2016</td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha de evaluación</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    dd/mm/aaaa</td>
            </tr>
            <tr>
                <td class="auto-style2">TITULO*</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control input-lg" placeholder="Título"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PRODUCTO*</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control input-lg" placeholder="PRODUCTO"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Campo</td>
                <td colspan="2">
                    <asp:DropDownList ID="DownListCampos" runat="server" DataSourceID="SqlDataSource1"  DataTextField="Des_Larga" DataValueField="IDCampo" class="form-control input-lg" placeholder="Campo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [IDCampo], [Des_Larga] FROM [Campos]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">Materias del grupo</td>
            </tr>
            <tr>
                <td class="auto-style2">Materias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
                <td class="auto-style5">
                    <asp:ListBox ID="ListBoxMaterias" runat="server" AutoPostBack="True" class="form-control input-lg" Height="217px" Width="222px" DataSourceID="SqlDataSource2" DataTextField="MATERIA40" DataValueField="MATERIA40" OnSelectedIndexChanged="ListBoxMaterias_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT DISTINCT [MATERIA40] FROM [MATERIA]"></asp:SqlDataSource>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="&gt;&gt;" />
                </td>
                <td>
                    <asp:ListBox ID="ListBoxMateriasP" runat="server" class="form-control input-lg" Height="217px" Width="222px" AutoPostBack="True" OnSelectedIndexChanged="ListBoxMateriasP_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Descripción del proyecto</td>
                <td colspan="3">
                    <textarea id="TextArea1" name="S1" class="form-control input-lg" ></textarea></td>
            </tr>
            <tr>
                <td class="auto-style2">Opinión del director</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" class="form-control input-lg" DataTextField="ID_OPINION_DIRECTOR" DataValueField="ID_OPINION_DIRECTOR" Width="176px">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem>No Evaluado</asp:ListItem>
                        <asp:ListItem>No viable</asp:ListItem>
                        <asp:ListItem>Viable</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [ID_OPINION_DIRECTOR], [DESCRIPCION] FROM [OPINION_DIRECTOR]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Observaciones</td>
                <td colspan="3">
                    <textarea id="TextArea2" name="S2" class="form-control input-lg" ></textarea></td>
            </tr>
            <tr>
                <td colspan="3">Integrantes</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ListBox ID="ListBoxProfesor" runat="server" class="form-control input-lg"  Height="240px" Width="297px"  DataSourceID="SqlDataSource4" DataTextField="NOMBRE" DataValueField="NOMBRE" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [NOMBRE] FROM [PROFESOR]"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="ButtonAddProf" runat="server" Text="&gt;&gt;" Width="82px" OnClick="ButtonAddProf_Click" />
                </td>
                <td colspan="2">
                    <asp:ListBox ID="ListBoxProfProy" runat="server" class="form-control input-lg" Height="231px" Width="240px" SelectionMode="Multiple"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <asp:Button ID="Button4" runat="server" Text="Button" />
                <td colspan="2">
                    <asp:Button ID="ButtonGuardarPro" runat="server" Text="Guardar Proyecto" OnClick="Button5_Click" class="btn btn-primary"  />
                </td>
                <td>
                    <asp:Button ID="ButtonLimpiar" runat="server" OnClick="ButtonLimpiar_Click" Text="Limpiar Campos" class="btn btn-primary" />
                </td>
            </tr>
      
                    
          </tbody>
        </table>
    </div>
    </div>
    </div>           
</div>
        
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
</asp:Content>
