<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultPeriodo.aspx.cs" Inherits="PCEPI.Presentacion.DefaultPeriodo" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
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
                <td class="auto-style4">
                    <asp:TextBox ID="txFechaI" runat="server" Height="16px" Width="130px" Enabled="False"  />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Images/calendario1.jpg" OnClick="ImageButton1_Click" Width="27px" />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="98px" OnSelectionChanged="Calendar1_SelectionChanged" Width="149px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr >
                <td class="auto-style3" colspan="0">
                    Fecha de Fin Del Periodo
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txFechaF" runat="server" Height="16px" Width="130px" Enabled="False"  />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/Images/calendario2.jpg" Width="26px" OnClick="ImageButton2_Click1" />

                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="114px" Width="151px" OnSelectionChanged="Calendar2_SelectionChanged" style="margin-right: 0px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="0">
                    
                </td>
            </tr>
            <tr>
                 <td colspan="0">
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Periodo" OnClick="btnInsert_Click" Height="23px" Width="160px" />
                 </td>      
                <td class="auto-style4">
                    <input id="Reset_Periodos" type="reset" value="limpiar campos" />
                </td>
            </tr>

            <tr>
                <td colspan="3">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvPeriodos" Width="355px" />
                </td>
           </tr>
        </table>
    </div>
</asp:Content>