<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPeriodo.aspx.cs" Inherits="PCEPI.Presentacion.DefaultPeriodo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Reset1 {
            height: 31px;
            width: 120px;
        }
        .auto-style2 {
            width: 216px;
        }
        .auto-style3 {
            width: 215px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <!-- <tr>
                <td class="auto-style3">
                    Nombre Del Periodo Actual
                </td>
                <td>
                    <asp:TextBox ID="txNombre" runat="server" Width="131px" /> 
                </td>
             </tr>-->
            <tr >
                <td class="auto-style3" colspan="0">
                    Fecha de Inicio Del Periodo
                </td>
                <td>
                    <asp:TextBox ID="txFechaI" runat="server" Height="16px" Width="130px"  />
                </td>
            </tr>
            <tr >
                <td class="auto-style3" colspan="0">
                    Fecha de Fin Del Periodo
                </td>
                <td>
                    <asp:TextBox ID="txFechaF" runat="server" Height="16px" Width="130px"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="0">
                    
                </td>
            </tr>
            <tr>
                 <td class="auto-style3">
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Periodo" OnClick="btnInsert_Click" Height="24px" Width="130px" />
                 </td>      
                <td>
                    <input id="Reset_Periodos" type="reset" value="limpiar campos" />
                </td>
            </tr>

            <tr>
                <td class="auto-style2" colspan="3">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvPeriodos" Width="355px" />
                </td>
           </tr>
        </table>
    </div>
    </form>
    
</body>
</html>