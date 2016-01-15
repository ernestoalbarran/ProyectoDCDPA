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
              <h2><table class="table table-user-information" ><tbody><tr><td class="auto-style5"> <asp:Label ID="Label1" runat="server"></asp:Label></td><td class="auto-style5">Plantel: <asp:Label ID="Label3" runat="server"></asp:Label></td><td class="auto-style5">Área: <asp:Label ID="Label2" runat="server"></asp:Label></td></tr></tbody></table></h2>    
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

    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">

            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <EditItemTemplate>
                            grupo:
                            <asp:TextBox ID="grupoTextBox" runat="server" Text='<%# Bind("grupo") %>' />
                            <br />
                            periodo:
                            <asp:TextBox ID="periodoTextBox" runat="server" Text='<%# Bind("periodo") %>' />
                            <br />
                            interarea:
                            <asp:TextBox ID="interareaTextBox" runat="server" Text='<%# Bind("interarea") %>' />
                            <br />
                            interplantel:
                            <asp:TextBox ID="interplantelTextBox" runat="server" Text='<%# Bind("interplantel") %>' />
                            <br />
                            p_asignatura:
                            <asp:TextBox ID="p_asignaturaTextBox" runat="server" Text='<%# Bind("p_asignatura") %>' />
                            <br />
                            oficio:
                            <asp:TextBox ID="oficioTextBox" runat="server" Text='<%# Bind("oficio") %>' />
                            <br />
                            fecha_ev1:
                            <asp:TextBox ID="fecha_ev1TextBox" runat="server" Text='<%# Bind("fecha_ev1") %>' />
                            <br />
                            fecha_ev2:
                            <asp:TextBox ID="fecha_ev2TextBox" runat="server" Text='<%# Bind("fecha_ev2") %>' />
                            <br />
                            titulo:
                            <asp:TextBox ID="tituloTextBox" runat="server" Text='<%# Bind("titulo") %>' />
                            <br />
                            producto:
                            <asp:TextBox ID="productoTextBox" runat="server" Text='<%# Bind("producto") %>' />
                            <br />
                            campo:
                            <asp:TextBox ID="campoTextBox" runat="server" Text='<%# Bind("campo") %>' />
                            <br />
                            asignaturas:
                            <asp:TextBox ID="asignaturasTextBox" runat="server" Text='<%# Bind("asignaturas") %>' />
                            <br />
                            descripcion:
                            <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
                            <br />
                            opinion_dir:
                            <asp:TextBox ID="opinion_dirTextBox" runat="server" Text='<%# Bind("opinion_dir") %>' />
                            <br />
                            observaciones:
                            <asp:TextBox ID="observacionesTextBox" runat="server" Text='<%# Bind("observaciones") %>' />
                            <br />
                            donde:
                            <asp:TextBox ID="dondeTextBox" runat="server" Text='<%# Bind("donde") %>' />
                            <br />
                            quien:
                            <asp:TextBox ID="quienTextBox" runat="server" Text='<%# Bind("quien") %>' />
                            <br />
                            cuando:
                            <asp:TextBox ID="cuandoTextBox" runat="server" Text='<%# Bind("cuando") %>' />
                            <br />
                            firma:
                            <asp:TextBox ID="firmaTextBox" runat="server" Text='<%# Bind("firma") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            grupo:
                            <asp:TextBox ID="grupoTextBox" runat="server" Text='<%# Bind("grupo") %>' />
                            <br />
                            periodo:
                            <asp:TextBox ID="periodoTextBox" runat="server" Text='<%# Bind("periodo") %>' />
                            <br />
                            interarea:
                            <asp:TextBox ID="interareaTextBox" runat="server" Text='<%# Bind("interarea") %>' />
                            <br />
                            interplantel:
                            <asp:TextBox ID="interplantelTextBox" runat="server" Text='<%# Bind("interplantel") %>' />
                            <br />
                            p_asignatura:
                            <asp:TextBox ID="p_asignaturaTextBox" runat="server" Text='<%# Bind("p_asignatura") %>' />
                            <br />
                            oficio:
                            <asp:TextBox ID="oficioTextBox" runat="server" Text='<%# Bind("oficio") %>' />
                            <br />
                            fecha_ev1:
                            <asp:TextBox ID="fecha_ev1TextBox" runat="server" Text='<%# Bind("fecha_ev1") %>' />
                            <br />
                            fecha_ev2:
                            <asp:TextBox ID="fecha_ev2TextBox" runat="server" Text='<%# Bind("fecha_ev2") %>' />
                            <br />
                            titulo:
                            <asp:TextBox ID="tituloTextBox" runat="server" Text='<%# Bind("titulo") %>' />
                            <br />
                            producto:
                            <asp:TextBox ID="productoTextBox" runat="server" Text='<%# Bind("producto") %>' />
                            <br />
                            campo:
                            <asp:TextBox ID="campoTextBox" runat="server" Text='<%# Bind("campo") %>' />
                            <br />
                            asignaturas:
                            <asp:TextBox ID="asignaturasTextBox" runat="server" Text='<%# Bind("asignaturas") %>' />
                            <br />
                            descripcion:
                            <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
                            <br />
                            opinion_dir:
                            <asp:TextBox ID="opinion_dirTextBox" runat="server" Text='<%# Bind("opinion_dir") %>' />
                            <br />
                            observaciones:
                            <asp:TextBox ID="observacionesTextBox" runat="server" Text='<%# Bind("observaciones") %>' />
                            <br />
                            donde:
                            <asp:TextBox ID="dondeTextBox" runat="server" Text='<%# Bind("donde") %>' />
                            <br />
                            quien:
                            <asp:TextBox ID="quienTextBox" runat="server" Text='<%# Bind("quien") %>' />
                            <br />
                            cuando:
                            <asp:TextBox ID="cuandoTextBox" runat="server" Text='<%# Bind("cuando") %>' />
                            <br />
                            firma:
                            <asp:TextBox ID="firmaTextBox" runat="server" Text='<%# Bind("firma") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        
                        <ItemTemplate>
                             <asp:Table ID="Table1" runat="server" class="table table-user-information" HorizontalAlign="Center" Height="100%">
                                <asp:TableHeaderRow>
                                    <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                                        <asp:Button ID="Button1" runat="server" Text="Imprimir lista de grupos" />
                                    </asp:TableHeaderCell>
                                    <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                                        <asp:Button ID="Button2" runat="server" Text="Imprimir grupos por campo" />
                                    </asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                            </asp:Table>

                            <asp:Table ID="Table2" runat="server" class="table table-user-information">
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                                    <asp:tableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="tituloLabel" runat="server" Text='<%# Bind("titulo") %>' /></asp:tableCell><asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold Font-Size="XX-Large" RowSpan="2"><asp:Label ID="grupoLabel" runat="server" Text='<%# Bind("grupo") %>' /></asp:TableCell><asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="productoLabel" runat="server" Text='<%# Bind("producto") %>' /></asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Campo</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:Label ID="campoLabel" runat="server" Text='<%# Bind("campo") %>' /></asp:TableCell><asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell><asp:TableCell class="auto-style1"><asp:Label ID="opinion_dirLabel" runat="server" Text='<%# Bind("opinion_dir") %>' /></asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                                    <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Tipo</asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> Interárea </asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox>Interplantel</asp:TableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" />c/ Profr. Asignatura</asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            
                            <asp:Label ID="periodoLabel" runat="server" Text='<%# Bind("periodo") %>' Visible="false" />
                            <asp:Label ID="interareaLabel" runat="server" Text='<%# Bind("interarea") %>' Visible="false" />
                            <asp:Label ID="interplantelLabel" runat="server" Text='<%# Bind("interplantel") %>' Visible="false" />
                            <asp:Label ID="p_asignaturaLabel" runat="server" Text='<%# Bind("p_asignatura") %>' Visible="false" />
                            <asp:Label ID="oficioLabel" runat="server" Text='<%# Bind("oficio") %>' Visible="false" />
                            <asp:Label ID="fecha_ev1Label" runat="server" Text='<%# Bind("fecha_ev1") %>' Visible="false" />
                            <asp:Label ID="fecha_ev2Label" runat="server" Text='<%# Bind("fecha_ev2") %>' Visible="false" />
                            <asp:Label ID="asignaturasLabel" runat="server" Text='<%# Bind("asignaturas") %>' Visible="false" />
                            <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' Visible="false" />
                            <asp:Label ID="observacionesLabel" runat="server" Text='<%# Bind("observaciones") %>' Visible="false" />
                            <asp:Label ID="dondeLabel" runat="server" Text='<%# Bind("donde") %>' Visible="false" />
                            <asp:Label ID="quienLabel" runat="server" Text='<%# Bind("quien") %>' Visible="false" />
                            <asp:Label ID="cuandoLabel" runat="server" Text='<%# Bind("cuando") %>' Visible="false" />
                            <asp:Label ID="firmaLabel" runat="server" Text='<%# Bind("firma") %>' Visible="false" />
                             <asp:Label ID="Label6" runat="server" Text='<%# Bind("firma") %>' Visible="false" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="USP_PROYECTOS" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label5" Name="Id_Periodo" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label2" Name="Id_Area" PropertyName="Text" Type="String" /><asp:ControlParameter ControlID="Label3" Name="Id_Plantel" PropertyName="Text" Type="String" /></SelectParameters>
                    </asp:SqlDataSource>
                </div>
           </div> 
       </div>
    </div>



    <asp:Table ID="Table1" runat="server" class="table table-user-information" HorizontalAlign="Center" Height="100%">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                <asp:Button ID="Button1" runat="server" Text="Imprimir lista de grupos" />
            </asp:TableHeaderCell>
            <asp:TableHeaderCell Height="50%" HorizontalAlign="Right">
                <asp:Button ID="Button2" runat="server" Text="Imprimir grupos por campo" />
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>



    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
                <div class="panel panel-info">
            
                    <div class="panel-body">
                        <div class=" col-md-10 col-lg-10 "> 
 
                            <asp:Table ID="Table2" runat="server" class="table table-user-information">
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                                    <asp:tableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="tituloLabel" runat="server" Text='<%# Bind("titulo") %>' /></asp:tableCell><asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold Font-Size="XX-Large" RowSpan="2"><asp:Label ID="grupoLabel" runat="server" Text='<%# Bind("grupo") %>' /></asp:TableCell><asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="productoLabel" runat="server" Text='<%# Bind("producto") %>' /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Campo</asp:tableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:Label ID="campoLabel" runat="server" Text='<%# Bind("campo") %>' /></asp:TableCell><asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell><asp:TableCell class="auto-style1"><asp:Label ID="opinion_dirLabel" runat="server" Text='<%# Bind("opinion_dir") %>' /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                                    <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Tipo</asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> Interárea </asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox>Interplantel</asp:TableCell><asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" />c/ Profr. Asignatura</asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                                    <asp:Label ID="periodoLabel" runat="server" Text='<%# Bind("periodo") %>' Visible="false" />
                                    <asp:Label ID="interareaLabel" runat="server" Text='<%# Bind("interarea") %>' Visible="false" />
                                    <asp:Label ID="interplantelLabel" runat="server" Text='<%# Bind("interplantel") %>' Visible="false" />
                                    <asp:Label ID="p_asignaturaLabel" runat="server" Text='<%# Bind("p_asignatura") %>' Visible="false" />
                                    <asp:Label ID="oficioLabel" runat="server" Text='<%# Bind("oficio") %>' Visible="false" />
                                    <asp:Label ID="fecha_ev1Label" runat="server" Text='<%# Bind("fecha_ev1") %>' Visible="false" />
                                    <asp:Label ID="fecha_ev2Label" runat="server" Text='<%# Bind("fecha_ev2") %>' Visible="false" />
                                    <asp:Label ID="asignaturasLabel" runat="server" Text='<%# Bind("asignaturas") %>' Visible="false" />
                                    <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' Visible="false" />
                                    <asp:Label ID="observacionesLabel" runat="server" Text='<%# Bind("observaciones") %>' Visible="false" />
                                    <asp:Label ID="dondeLabel" runat="server" Text='<%# Bind("donde") %>' Visible="false" />
                                    <asp:Label ID="quienLabel" runat="server" Text='<%# Bind("quien") %>' Visible="false" />
                                    <asp:Label ID="cuandoLabel" runat="server" Text='<%# Bind("cuando") %>' Visible="false" />
                                    <asp:Label ID="firmaLabel" runat="server" Text='<%# Bind("firma") %>' Visible="false" />
                                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("firma") %>' Visible="false" />
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>  
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="USP_PROYECTOS" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label5" Name="Id_Periodo" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Label2" Name="Id_Area" PropertyName="Text" Type="String" /><asp:ControlParameter ControlID="Label3" Name="Id_Plantel" PropertyName="Text" Type="String" />
                        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

