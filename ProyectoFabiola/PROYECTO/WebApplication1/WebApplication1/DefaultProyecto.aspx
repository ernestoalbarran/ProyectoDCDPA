<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultProyecto.aspx.cs" Inherits="WebApplication1.DefaultProyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 336px;
        }
        .auto-style4 {
            width: 26px;
        }
    </style>
</head>
<body>
    <hr />
    <form id="form1" runat="server">
        <h2 align="center" style="font-family: Aparajita; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FF0000">Recuerde que el Coordinador del grupo debe de ser de esta<br>Área y Plantel, para crear un grupo nuevo.</h2>
        <p style="margin-left: 120px">
             &nbsp;</p>
        <p style="margin-left: 120px">
             
            <table border="1" style="width:100%;">
                <tr>
                    <td class="auto-style1"></td>
                    <td align="center" class="auto-style2" colspan="2">Grupo Nuevo</td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:CheckBoxList ID="ChBtnProy" runat="server" Height="77px">
                            <asp:ListItem Value="1" > Interárea</asp:ListItem>
                            <asp:ListItem Value="2">Interplantel</asp:ListItem>
                            <asp:ListItem Value="4">c/Profr. Asignatura</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btCrearGrupo" runat="server" Text="Crear Grupo Nuevo" OnClick="btCrearGrupo_Click" />
                    </td>
                    <td>&nbsp;</td>
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
             
        </p>
            


    </form>
</body>
</html>
