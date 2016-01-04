
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultCampos.aspx.cs" Inherits="DGCCH.Presentacion.DefaultCampos" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

     <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>CAMPOS</h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                     <table class="table table-user-information">
                     <tbody>
                     <tr>
                     <td >
                            TÍTULO:
                    </td>
                <td colspan=2>
                    <asp:TextBox ID="txDes_Corta" runat="server" class="form-control input-lg" placeholder="TITULO" tabindex="1"> </asp:TextBox>
                </td>
                </tr>
                         <td >
                    PERIODO
                </td>
                <td >
                    <asp:DropDownList ID="periodo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_periodo" DataValueField="ID_PERIODO" class="form-control input-lg">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [ID_PERIODO], [NOMBRE_PERIODO] FROM [PERIODO]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
             </tr>
                <tr >
                <td >
                            DESCRIPCIÓN LARGA
                </td>
                <td colspan=2>
                    <asp:TextBox  TextMode="Multiline" ID="txDes_Larga" runat="server" class="form-control input-lg" placeholder="DESCRIPCION LARGA" tabindex="1"> </asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txDes_Larga" ErrorMessage="Un Campo necesita una descripción" ForeColor="Red"></asp:RequiredFieldValidator>
                
                    </tr>
                   
            <tr>
                 <td >
                        <asp:Button ID="btnInsert" runat="server" Text="Almacenar Campos
                            " OnClick="btnInsert_Click" class="btn btn-primary" />
                 </td>      
                <td>
                    <input id="Reset_Campos" type="reset" value="limpiar campos" class="btn btn-primary"/>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                      <asp:GridView AutoGenerateColumns="true" runat="server" ID="grvCampos" 
                           EmptyDataText="No hay registros de Campos ."
                          AllowSorting="True"
                          AllowPaging="True"  
                          CellPadding="4"
                          GridLines="None" 
                           OnPageIndexChanging="grvCampos_PageIndexChanging" 
                          ForeColor="#333333" 
                           Width="607px" 
                           >
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