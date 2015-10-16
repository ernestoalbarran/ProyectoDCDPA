<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultLema.aspx.cs" Inherits="PCEPI.Presentacion.DefaultLema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 411px;
        }
        #Reset1 {
            height: 31px;
            width: 120px;
        }
        .auto-style4 {
            width: 177px;
        }
        .auto-style7 {
            width: 75px;
        }
        .auto-style8 {
            width: 39px;
        }
        </style>
</head>
<body style="height: 412px">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="0" class="auto-style8">
                    Titulo
                </td>
                <td>
                    <asp:TextBox ID="txtitulo" runat="server" Width="183px" /> 
                </td>
                <td class="auto-style7">
                    Periodo
                </td>
                <td class="auto-style4" colspan="0">

                    <asp:DropDownList ID="periodo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_periodo" DataValueField="Nombre_periodo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [NOMBRE_PERIODO] FROM [PERIODO]"></asp:SqlDataSource>

                </td>
             </tr>
            <tr >
                <td class="auto-style1" colspan="4">
                    Descripcion Lema
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:TextBox TextMode="Multiline" ID="txdescripcion" runat="server" Height="149px" Width="474px"  />
                </td>
            </tr>
            <tr>
                 <td class="auto-style8">
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Lema" OnClick="btnInsert_Click" Height="23px" Width="132px" />
                 </td>      
                <td>
                    <input id="Reset_Lemas" type="reset" value="limpiar campos" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvLemas" Width="519px" />
                </td>
           </tr>
        </table>
    </div>
    </form>
    
</body>
</html>