<%@ Page Title="DGCCH" Language="C#"  AutoEventWireup="true" CodeBehind="AltaProyecto.aspx.cs" Inherits="WebApplication1.AltaProyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table style="width:100%;">
            <tr>
               
                <td>
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
                <td class="auto-style3" colspan="2">CCH/DIR/<asp:TextBox ID="TextBox1" runat="server" Width="39px"></asp:TextBox>/2016</td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha de evaluación</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    dd/mm/aaaa</td>
            </tr>
            <tr>
                <td class="auto-style2">Título*</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Producto*</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Campo</td>
                <td colspan="2">
                    <asp:DropDownList ID="DownListCampos" runat="server" DataSourceID="SqlDataSource1">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PCEPI2ConnectionString %>" SelectCommand="SELECT [ID_CAMPO], [DESCRIPCION_LARGA] FROM [CAMPO]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">Materias del grupo</td>
            </tr>
            <tr>
                <td class="auto-style2">Materias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
                <td class="auto-style5">
                    <asp:ListBox ID="ListBoxMaterias" runat="server" AutoPostBack="True" Height="217px" Width="222px" DataSourceID="SqlDataSource2" DataTextField="MATERIA40" DataValueField="MATERIA40" OnSelectedIndexChanged="ListBoxMaterias_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT DISTINCT [MATERIA40] FROM [MATERIA]"></asp:SqlDataSource>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="&gt;&gt;" />
                </td>
                <td>
                    <asp:ListBox ID="ListBoxMateriasP" runat="server" Height="217px" Width="222px" AutoPostBack="True" OnSelectedIndexChanged="ListBoxMateriasP_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Descripción del proyecto</td>
                <td colspan="3">
                    <textarea id="TextArea1" name="S1"></textarea></td>
            </tr>
            <tr>
                <td class="auto-style2">Opinión del director</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ID_OPINION_DIRECTOR" DataValueField="ID_OPINION_DIRECTOR">
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
                    <textarea id="TextArea2" name="S2"></textarea></td>
            </tr>
            <tr>
                <td colspan="3">Integrantes</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ListBox ID="ListBoxProfesor" runat="server" Height="240px" Width="280px" DataSourceID="SqlDataSource4" DataTextField="NOMBRE" DataValueField="NOMBRE" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [NOMBRE] FROM [PROFESOR]"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="ButtonAddProf" runat="server" Text="&gt;&gt;" Width="82px" OnClick="ButtonAddProf_Click" />
                </td>
                <td colspan="2">
                    <asp:ListBox ID="ListBoxProfProy" runat="server" Height="231px" Width="227px" SelectionMode="Multiple"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <asp:Button ID="Button4" runat="server" Text="Button" />
                <td colspan="2">
                    <asp:Button ID="Button5" runat="server" Text="Guardar Proyecto" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
