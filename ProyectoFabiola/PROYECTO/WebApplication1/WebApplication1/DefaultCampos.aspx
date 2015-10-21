
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultCampos.aspx.cs" Inherits="DGCCH.Presentacion.DefaultCampos" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

   <div>
    <h1 style="color:red">Campos</h1>
   
    <table>
            <tr >
                <td class="auto-style2">
                    Título:
                </td>
                <td>
                    <asp:TextBox ID="txDes_Corta" runat="server" Height="16px" Width="130px"  />
                </td>
            </tr>
            <tr >
                <td  class="auto-style1" colspan="6">
                    Descripción Larga
                </td>
                <td>
                    <asp:TextBox  TextMode="Multiline" ID="txDes_Larga" runat="server" Height="100px" Width="266px"  />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
            </tr>
         <p>


         </p>
            <tr>
                 <td >
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Campos
                            " OnClick="btnInsert_Click" Height="24px" Width="130px" />
                 </td>      
                <td>
                    <input id="Reset_Campos" type="reset" value="limpiar campos" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvCampos" Width="385px" Height="135px"  />
                </td>
           </tr>
        </table>
    </div>
</asp:Content>
