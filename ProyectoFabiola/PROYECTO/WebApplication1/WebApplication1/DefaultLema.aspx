<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultLema.aspx.cs" Inherits="PCEPI.Presentacion.DefaultLema" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>LEMAS</h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                     <table class="table table-user-information">
                     <tbody>
                     <tr>
                     <td >
                            TITULO
                     </td>
                <td colspan=2>
                    <asp:TextBox ID="txtitulo" runat="server" class="form-control input-lg" placeholder="TITULO" tabindex="1"/> </asp:TextBox>
                </td>
                <td >
                    PERIODO
                </td>
                <td >
                    <asp:DropDownList ID="periodo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_periodo" DataValueField="Nombre_periodo" Width="500">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [NOMBRE_PERIODO] FROM [PERIODO]"></asp:SqlDataSource>
                </td>
             </tr>
             </tr>
            <tr >
                <td>
                    DESCRIPCION DE LEMA
                </td>
                <td colspan=5>
                    <asp:TextBox TextMode="Multiline" ID="txdescripcion" runat="server" class="form-control input-lg" placeholder="DESCRIPCION"
                                  TabIndex="2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td >
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Lema" OnClick="btnInsert_Click" class="btn btn-primary" />
                 </td>      
                <td>
                    <input id="Reset_Lemas" type="reset" value="limpiar campos" class="btn btn-primary" />
                </td>
            </tr>
           </tr>
                <td colspan="2">
                    <!--Width="519px-->
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvLemas" 
                          EmptyDataText="No hay registros de Lemas ."
                          AllowSorting="True"
                          AllowPaging="True"  
                          CellPadding="4"
                          GridLines="None" 
                          ForeColor="#333333" 
                           Width="607px" >
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