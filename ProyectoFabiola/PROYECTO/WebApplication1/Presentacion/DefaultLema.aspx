<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultLema.aspx.cs" Inherits="PCEPI.Presentacion.DefaultLema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 411px;
        }
        .auto-style2 {
            width: 66px;
        }
        #Reset1 {
            height: 31px;
            width: 120px;
        }
    </style>
</head>
<body style="height: 412px">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="auto-style2">
                    Titulo
                </td>
                <td>
                    <asp:TextBox ID="txtitulo" runat="server" /> 
                </td>
             </tr>
            <tr >
                <td class="auto-style1" colspan="6">
                    Descripcion Lema
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="6">
                    <asp:TextBox TextMode="Multiline" ID="txdescripcion" runat="server" Height="149px" Width="518px"  />
                </td>
            </tr>
            <tr>
                 <td>
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
