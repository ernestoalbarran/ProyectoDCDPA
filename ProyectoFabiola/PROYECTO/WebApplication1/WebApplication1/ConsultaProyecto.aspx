<%@ Page Title="Consulta Proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaProyecto.aspx.cs" Inherits="WebApplication1.ConsultaProyecto" %>

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
            width: 66px;
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
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Proyectos 2015-2016    Entidad1</h2>
            </hgroup>
        </div>

      <div class="panel-body">
        <div class=" col-md-10 col-lg-10 "> 

        <asp:Table ID="Table1" runat="server" class="table table-user-information" HorizontalAlign="Center" Height="100%">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                    <asp:Button ID="Button1" runat="server" Text="Imprimir lista de grupos" />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                    <asp:Button ID="Button2" runat="server" Text="Imprimir grupos por campo" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>

        <asp:Table ID="Table2" runat="server" class="table table-user-information">
            <asp:TableRow>
                <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                <asp:tableCell class="auto-style1" ColumnSpan="4">GUIA PARA EL PROFESOR DE MATEMÁTICAS III.</asp:tableCell>
                <asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold Font-Size="XX-Large" RowSpan="2">01</asp:TableCell>
                <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="4">Guía para el profesor</asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Campo</asp:tableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="2">2. Formación Integral</asp:TableCell>
                <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell>
                <asp:TableCell class="auto-style1">Viable</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Tipo</asp:TableCell>
                <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> Interárea</asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox>Interplantel</asp:TableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" />c/ Profr. Asignatura</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Table ID="Table3" runat="server" class="table table-user-information">

            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" Font-Bold Font-Size="Large">Integrantes</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1">Gómez González Guillermo</asp:TableCell>
                <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1">Molina Tapia Alberto Héctor Manuel</asp:TableCell>
                <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>Ramírez del Castillo Carlos</asp:TableCell>
                <asp:TableCell>Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell>Sabático</asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
      </div>
    </div>

</div>
          </div>
    </asp:Content>