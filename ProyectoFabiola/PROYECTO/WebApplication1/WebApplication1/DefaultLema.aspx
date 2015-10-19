<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultLema.aspx.cs" Inherits="PCEPI.Presentacion.DefaultLema" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
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


</asp:Content>