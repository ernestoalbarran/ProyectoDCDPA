<%@ Page Title="DGCCH" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaProyecto.aspx.cs" Inherits="PCEPI.AltaProyecto" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 107px;
        }
        #TextArea1 {
            height: 144px;
            width: 440px;
        }
        #TextArea2 {
            height: 158px;
            width: 436px;
        }
        .auto-style3 {
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 25px;
        }
        .auto-style7 {
            width: 52px;
        }
        .auto-style8 {
            width: 29px;
        }
    </style>
</asp:Content>

 
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">

              
              <h2>Alta Proyecto
                  <asp:Label ID="lblTitulo" runat="server" ></asp:Label>
        
   
              <!-- <span class="pull-right">
                            <asp:LinkButton ID="LnkAlta" runat="server" text="Alta Firmantes"
                            data-original-title="Alta Firmantes" data-toggle="tooltip" type="button" 
                            class="btn btn-primary" onclick="LnkNuevo_Click"></asp:LinkButton>
                              </span>

                  <span class="pull-right">
                            <asp:LinkButton ID="LinkConsulta" runat="server" text="Consulta Proyecto"
                            data-original-title="Consulta Firmantes" data-toggle="tooltip" type="button" 
                            class="btn btn-primary" onclick="LnkNuevo_ClickConsulta"></asp:LinkButton>
                              </span> -->


               </h2>   
               
              
                             
              
          </div>
            

            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <Triggers><asp:AsyncPostBackTrigger ControlID="ButtonAddProf" EventName="Click"/>
                       
             </Triggers>
          <ContentTemplate>
        
                     <table class="table table-user-information">
                     <tbody>
               <tr>
               
                <td colspan="2" >
                   Plantel 
                    <asp:Label ID="lblPlantel" runat="server" Text="Label" ></asp:Label>
                </td>
                <td class="auto-style5">
                    Grupo</td>
                   <td class="auto-style7">
                       <asp:Label ID="lblGrupo" runat="server" Text="Label"></asp:Label>
                   </td>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="lblMateria" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="6" align="center">
                    Proyectos 
                    <asp:Label ID="lblPeriodo" runat="server" Text="Label"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Entidad 1"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Número de oficio*</td>
                <td colspan=3>CCH/DIR/<asp:TextBox ID="txtNumOfice" runat="server" Width="39px" Height="22px"></asp:TextBox>/2016</td>

                <td> <ASP:RequiredFieldValidator id="rqfValidatorNumOfice" runat="server" errormessage="El numero de oficio es obligatorio" width="243px" controltovalidate="txtNumOfice" display="Dynamic"></ASP:RequiredFieldValidator>
</td>

            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Fecha de evaluación</td>
                <td class="auto-style3" colspan="3">
                    <asp:TextBox ID="txtFechaEval" runat="server" Enabled="False"></asp:TextBox>
                    dd/mm/aaaa</td>
                <td>
                    <ASP:RequiredFieldValidator id="rfvValidarFechaEval" runat="server" errormessage="La fecha de evaluacion es obligatoria" width="243px" controltovalidate="txtFechaEval" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
                

            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Titulo*</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTitulo" runat="server" class="form-control input-lg" placeholder="Título"></asp:TextBox>
                </td>
                <td>
                   <ASP:RequiredFieldValidator id="rfvValidarTitulo" runat="server" errormessage="Todos los proyectos requieren un titulo" width="243px" controltovalidate="txtTitulo" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Producto*</td>
                <td colspan="3">
                    <asp:TextBox ID="txtProducto" runat="server" class="form-control input-lg" placeholder="PRODUCTO"></asp:TextBox>
                </td>
                <td>
                   <ASP:RequiredFieldValidator id="rfvValidarProducto" runat="server" errormessage="Todos los proyectos requieren especificar la realización de un producto" width="243px" controltovalidate="txtTitulo" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Campo</td>
                <td colspan="3">
                    
                        
                        <asp:DropDownList ID="ddlCampo" runat="server">
                        <%--Esto comentado es como se hacia antes, ahora se carga en capas directamente de la tabla campos de BD
                            <asp:ListItem Value="0">Elige una opcion </asp:ListItem>
                        <asp:ListItem Value="1">Calidad de Aprendizaje</asp:ListItem>
                        <asp:ListItem Value="2">Formación Integral</asp:ListItem>
                        <asp:ListItem Value="3">Actualización de los programas</asp:ListItem>
                        <asp:ListItem Value="4">Proyectos cordinados</asp:ListItem>--%>
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5">Materias del grupo</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="2" colspan="2">Materias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
                
                <td class="auto-style5" rowspan="2" colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <asp:ListBox ID="ListBoxMaterias" runat="server" class="form-control input-lg" Height="217px" Width="200px" SelectionMode="Multiple" AutoPostBack="True" ></asp:ListBox>
                    <%--<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [NOMBRE] FROM [PROFESOR]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceMAT" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_FILTRAR_MATERIA" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlArea" PropertyName="SelectedValue" Name="idArea" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>--%>
                            </ContentTemplate>
                   </asp:UpdatePanel>
                </td>
                 
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" OnClick="Button1_Click" />
                </td>
                <td rowspan="2">
                    <asp:ListBox ID="ListBoxMateriasP" runat="server" class="form-control input-lg" Height="217px" Width="200px" OnSelectedIndexChanged="ListBoxMateriasP_SelectedIndexChanged" SelectionMode="Multiple" AutoPostBack="True"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="ButtondellMateria" runat="server" Text="&lt;&lt;" OnClick="ButtondellMateria_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Descripción del proyecto</td>
                <td colspan="4">
                    <asp:TextBox runat="server" ID="txtADescProy" rows="5" Height="183px" Width="500px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Opinión del director</td>
                <td colspan="4">
                    <asp:DropDownList ID="ddlOpinion" runat="server" Width="176px">
                        <asp:ListItem Selected="True" Value="0">selecciona una opcion</asp:ListItem>
                        <asp:ListItem Value="1">No Evaluado</asp:ListItem>
                        <asp:ListItem Value="2">No viable</asp:ListItem>
                        <asp:ListItem Value="3">Viable</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Observaciones</td>
                <td colspan="4">
                    <asp:TextBox ID="txtObservaciones" runat="server" rows="5" Height="118px" Width="495px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="5">Integrantes</td>
            </tr>
        
            <tr>
                <td class="auto-style2">
                    

                             

                    <asp:ListBox ID="ListBoxProfesor" runat="server" class="form-control input-lg"  Height="240px" Width="297px" SelectionMode="Multiple" AutoPostBack="True" OnSelectedIndexChanged="ListBoxProfesor_SelectedIndexChanged"></asp:ListBox>
<%--        </asp:SqlDataSource>      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_OBTENER_INTEGRANTE" SelectCommandType="StoredProcedure">  DataSourceID="SqlDataSource4" 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_OBTENER_INTEGRANTE" SelectCommandType="StoredProcedure" >
                     
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlPlantel" PropertyName="SelectedValue" Name="ID_PLANTEL" Type="Int32" DefaultValue="0" />
                        </SelectParameters>                    	
                    </asp:SqlDataSource>--%>
                          
                </td>
                <td>
                    <asp:Button ID="ButtonAddProf" runat="server" OnClick="ButtonAddProf_Click" Text="&gt;&gt;" Width="27px" />
                </td>
                <td class="auto-style5" colspan="4">
                    <asp:GridView ID="gvProfesor" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProfesorCarrera,RFC" ForeColor="#333333" GridLines="None" OnRowDeleting="gvProfesor_RowDeleting" OnSelectedIndexChanged="gvProfesor_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="RFC" HeaderText="RFC" Visible="False">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Coordinador">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chbCoordinador" runat="server" AutoPostBack="True" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Perfil">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlPerfil" runat="server">
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            <asp:ButtonField ButtonType="Button" Text="Editar" />
                            <asp:BoundField DataField="ProfesorCarrera" HeaderText="Profesor de Carrera" Visible="False" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
    
             <tr>
                <td class="auto-style2" colspan="2">&nbsp;</td>
                <td colspan="3">
                    <asp:Button ID="btGuardarProy" runat="server" Text="Guardar Proyecto" OnClick="btnGuardarProy" class="btn btn-primary"  />
                </td>
                <td>
                    &nbsp;</td>
            </tr>

          </tbody>
        </table>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    </div>
    </div>           
</div>
        
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/WebApplcation1/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/WebApplication1/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
</asp:Content>

