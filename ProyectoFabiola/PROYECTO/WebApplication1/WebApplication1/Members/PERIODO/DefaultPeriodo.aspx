<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultPeriodo.aspx.cs" Inherits="PCEPI.Presentacion.DefaultPeriodo" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>PERIODOS</h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                     <table class="table table-user-information">
                     <tbody>
            <!-- <tr>
                <td class="auto-style3">
                    Nombre Del Periodo Actual
                </td>
                <td>
                    <asp:TextBox ID="txNombre" runat="server" Width="131px" /> 
                </td>
             </tr>-->
            <tr >
                <td >
                    FECHA DE INICIO DEL PERIODO:
                </td>
                <td>
                    <asp:TextBox ID="txFechaI" runat="server" class="form-control input-lg"  Enabled="False"  />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Images/calendario1.jpg" OnClick="ImageButton1_Click" Width="27px" />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Es necesario ingresar fecha de inicio y fin del periodo" ControlToValidate="txFechaI"></asp:RequiredFieldValidator>
                    &nbsp;<br />
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
                <td >
                    FECHA DE FIN DE PERIODO
                </td>
                <td>
                    <asp:TextBox ID="txFechaF" runat="server"  class="form-control input-lg" Enabled="False"  />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/Images/calendario2.jpg" Width="26px" OnClick="ImageButton2_Click1" />
                    <asp:comparevalidator id="cvFecha" runat="server" Display="Dynamic" ControlToValidate="txFechaF" ErrorMessage="Debes ingresar Fecha de inicio del periodo" Type="String" Operator="LessThan">*</asp:comparevalidator>
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
                <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Periodo" OnClick="btnInsert_Click" class="btn btn-primary" />
                 </td>
            </tr>
            <tr>
                 <td colspan="0">
                        &nbsp;</td>      
                
            </tr>

            <tr>
                <td colspan="2">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvPeriodos" 
                        EmptyDataText="No hay registros de Periodos ."
                          AllowPaging="True"  
                          CellPadding="4"
                          GridLines="None"
                          OnPageIndexChanging="grvPeriodos_PageIndexChanging" 
                          ForeColor="#333333" 
                           Width="607px" OnSelectedIndexChanged="grvPeriodos_SelectedIndexChanged" OnSelectedIndexChanging="grvPeriodos_SelectedIndexChanging" >
                           <EditRowStyle BackColor="#999999" />
                             <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />  
                             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#E9E7E2" />
                             <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />                         
                          </asp:GridView> 
                                                            
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