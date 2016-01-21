<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultProyecto.aspx.cs" Inherits="PCEPI.DefaultProyecto" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 44px;

        }
        .auto-style2 {
            height: 51px;
        }
        .auto-style3 {
            height: 53px;
        }
        .auto-style4 {
            height: 54px;
        }
        .auto-style5 {
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">
              <h2>
                  <table class="table table-user-information" >
                      <tbody>
                          <tr>
                              <td class="auto-style5"> <asp:Label ID="Label1" runat="server"></asp:Label></td>
                              <td class="auto-style5">Plantel: <asp:Label ID="Label3" runat="server"></asp:Label></td>
                              <td class="auto-style5">Área: <asp:Label ID="Label2" runat="server"></asp:Label></td>
                          </tr>
                      </tbody>
                  </table>
              </h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
            <table class="table table-user-information">
            <tbody>
                <tr>
                    <td class="auto-style1"></td>
                    <td align="center" class="auto-style2" colspan="2">Grupo Nuevo</td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5">
                        <asp:CheckBoxList ID="ChBtnProy" runat="server" Height="77px">
                            <asp:ListItem Value="1" > Interárea</asp:ListItem>
                            <asp:ListItem Value="2">Interplantel</asp:ListItem>
                            <asp:ListItem Value="4">c/Profr. Asignatura</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btCrearGrupo" runat="server" Text="Crear Grupo Nuevo" OnClick="btCrearGrupo_Click" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Visible="false"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style3">
                        
                    </td>
                    <td class="auto-style4">
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
             
    </div>
    </div>
    </div>           
</div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>


    <asp:Table ID="Table1" runat="server" class="table table-user-information" HorizontalAlign="Center" Height="100%">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                <asp:Button ID="Button1" runat="server" Text="Imprimir lista de grupos" Visible="false" />
            </asp:TableHeaderCell>
            <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                <asp:Button ID="Button2" runat="server" Text="Imprimir grupos por campo" Visible="false" />
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>

   <%-- <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate >
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
                <div class="panel panel-info">
                    <div class="panel-body">
                        <div class=" col-md-10 col-lg-10 "> 
                            <asp:Table ID="Table2" runat="server" class="table table-user-information">
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                                    <asp:tableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="tituloLabel" runat="server" Text='<%# Eval("titulo") %>' /></asp:tableCell><asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" Font-Size="XX-Large" RowSpan="2"><asp:Label ID="grupoLabel" runat="server" Text='<%# Eval("grupo") %>' /></asp:TableCell><asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="productoLabel" runat="server" Text='<%# Eval("producto") %>' /></asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:tableCell class="auto-style1" Font-Bold="true" Font-Size="Medium">Campo</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:Label ID="campoLabel" runat="server" Text='<%# Eval("Des_Corta") %>' /></asp:TableCell><asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell><asp:TableCell class="auto-style1"><asp:Label ID="opinion_dirLabel" runat="server" Text='<%# Bind("descripcion") %>' /></asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                                    <asp:TableCell class="auto-style1" Font-Bold="true" Font-Size="Medium">Tipo</asp:TableCell>
                                    <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("interarea").ToString() == "1" ? true: false %>' /> Interárea </asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Eval("interplantel").ToString() == "1" ? true: false %>' ></asp:CheckBox>Interplantel</asp:TableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Eval("p_asignatura").ToString() == "1" ? true: false %>' />c/ Profr. Asignatura</asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>--%>

    <asp:Repeater ID="Repeater1" OnItemDataBound="Repeater1_ItemDataBound" runat="server">
        <ItemTemplate >
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
                <div class="panel panel-info">
                    <div class="panel-body">
                        <div class=" col-md-10 col-lg-10 "> 

                            <asp:Table ID="Table2" runat="server" class="table table-user-information">
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                                    <asp:tableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="tituloLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "titulo") %>' /></asp:tableCell>
                                    <asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" Font-Size="XX-Large" RowSpan="2"><asp:Label ID="labelgrupo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "grupo") %>' /></asp:TableCell>
                                    <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell>
                                    <asp:TableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="productoLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "producto") %>' /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:tableCell class="auto-style1" Font-Bold="true" Font-Size="Medium">Campo</asp:tableCell>
                                    <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:Label ID="campoLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Des_Corta") %>' /></asp:TableCell>
                                    <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell><asp:TableCell class="auto-style1"><asp:Label ID="opinion_dirLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "descripcion") %>' /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                                    <asp:TableCell class="auto-style1" Font-Bold="true" Font-Size="Medium">Tipo</asp:TableCell>
                                    <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "interarea").ToString() == "1" ? true: false %>' /> Interárea </asp:TableCell>
                                    <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "interplantel").ToString() == "1" ? true: false %>' ></asp:CheckBox>Interplantel</asp:TableCell>
                                    <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "p_asignatura").ToString() == "1" ? true: false %>' />c/ Profr. Asignatura</asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            
                            
                            <asp:Label ID="labelperiodo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "periodo") %>' Visible="false" />

                            
<%--                            <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Eval("interarea").ToString() == "1" ? true: false %>' />--%>
                            
                            

                            <asp:GridView ID="GridView1" runat="server"  DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CellPadding="4" CellSpacing="4" Width="100%"  > 
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="#5D7B9D" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

                            </asp:GridView>

                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="USP_MIEMBROS" SelectCommandType="StoredProcedure">
                               <SelectParameters>
                                   <asp:ControlParameter ControlID="labelperiodo" Name="Id_Periodo" PropertyName="Text" Type="String" />
                                   <asp:ControlParameter ControlID="labelgrupo" Name="Id_Grupo" PropertyName="Text" Type="String" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>



</asp:Content>

