<%@ Page Title="DGCCH" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaProyecto.aspx.cs" Inherits="WebApplication1.AltaProyecto" %>


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
            width: 66px;
        }
        .auto-style6 {
            width: 25px;
        }
    </style>
</asp:Content>

 
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
       <div class="panel panel-info">
           <div class="panel-heading">

              
              <h2>Alta Proyecto
                  <asp:Label ID="lblTitulo" runat="server" ></asp:Label>
        
   
               <span class="pull-right">
                            <asp:LinkButton ID="LnkAlta" runat="server" text="Alta Firmantes"
                            data-original-title="Alta Firmantes" data-toggle="tooltip" type="button" 
                            class="btn btn-primary" onclick="LnkNuevo_Click"></asp:LinkButton>
                              </span>

                  <span class="pull-right">
                            <asp:LinkButton ID="LinkConsulta" runat="server" text="Consulta Proyecto"
                            data-original-title="Consulta Firmantes" data-toggle="tooltip" type="button" 
                            class="btn btn-primary" onclick="LnkNuevo_ClickConsulta"></asp:LinkButton>
                              </span>


               </h2>   
               
              
                             
              
          </div>
            

            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <Triggers><asp:AsyncPostBackTrigger ControlID="ButtonAddProf" EventName="Click"/>
                       <asp:AsyncPostBackTrigger ControlID="Buttondelprof" EventName="Click"/>
             </Triggers>
          <ContentTemplate>
        
                     <table class="table table-user-information">
                     <tbody>
               <tr>
               
                <td >
                   Plantel 
                    <asp:Label ID="lblPlantel" runat="server" Text="Label" ></asp:Label>
                </td>
                <td class="auto-style5">
                    Grupo</td>
                   <td class="auto-style5">
                       <asp:Label ID="lblGrupo" runat="server" Text="Label"></asp:Label>
                   </td>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="lblMateria" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="5" align="center">
                    Proyectos 
                    <asp:Label ID="lblPeriodo" runat="server" Text="Label"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Entidad 1"></asp:Label>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Número de oficio*</td>
                <td colspan=3>CCH/DIR/<asp:TextBox ID="txtNumOfice" runat="server" Width="39px" Height="22px"></asp:TextBox>/2016</td>

                <td> <ASP:RequiredFieldValidator id="rqfValidatorNumOfice" runat="server" errormessage="El numero de oficio es obligatorio" width="243px" controltovalidate="txtNumOfice" display="Dynamic"></ASP:RequiredFieldValidator>
</td>

            </tr>
            <tr>
                <td class="auto-style2">Fecha de evaluación</td>
                <td class="auto-style3" colspan="3">
                    <asp:TextBox ID="txtFechaEval" runat="server" Enabled="False"></asp:TextBox>
                    dd/mm/aaaa</td>
                <td>
                    <ASP:RequiredFieldValidator id="rfvValidarFechaEval" runat="server" errormessage="La fecha de evaluacion es obligatoria" width="243px" controltovalidate="txtFechaEval" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
                

            </tr>
            <tr>
                <td class="auto-style2">Titulo*</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTitulo" runat="server" class="form-control input-lg" placeholder="Título"></asp:TextBox>
                </td>
                <td>
                   <ASP:RequiredFieldValidator id="rfvValidarTitulo" runat="server" errormessage="Todos los proyectos requieren un titulo" width="243px" controltovalidate="txtTitulo" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Producto*</td>
                <td colspan="3">
                    <asp:TextBox ID="txtProducto" runat="server" class="form-control input-lg" placeholder="PRODUCTO"></asp:TextBox>
                </td>
                <td>
                   <ASP:RequiredFieldValidator id="rfvValidarProducto" runat="server" errormessage="Todos los proyectos requieren especificar la realización de un producto" width="243px" controltovalidate="txtTitulo" display="Dynamic"></ASP:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Campo</td>
                <td colspan="3">
                    <asp:DropDownList ID="ddlCampo" runat="server">
                        <asp:ListItem>Elige una opcion </asp:ListItem>
                        <asp:ListItem>Calidad de Aprendizaje</asp:ListItem>
                        <asp:ListItem>Formación Integral</asp:ListItem>
                        <asp:ListItem>Actualización de los programas</asp:ListItem>
                        <asp:ListItem>Proyectos cordinados</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="4">Materias del grupo</td>
            </tr>
            <tr>
                <td class="auto-style2" rowspan="2">Materias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
                
                <td class="auto-style5" rowspan="2" colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <asp:ListBox ID="ListBoxMaterias" runat="server" class="form-control input-lg" Height="217px" Width="222px" SelectionMode="Multiple" AutoPostBack="false" ></asp:ListBox>
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
                    <asp:ListBox ID="ListBoxMateriasP" runat="server" class="form-control input-lg" Height="217px" Width="222px" OnSelectedIndexChanged="ListBoxMateriasP_SelectedIndexChanged" SelectionMode="Multiple"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="ButtondellMateria" runat="server" Text="&lt;&lt;" OnClick="ButtondellMateria_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Descripción del proyecto</td>
                <td colspan="4">
                    <asp:TextBox runat="server" ID="txtADescProy" rows="5" Height="183px" Width="546px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Opinión del director</td>
                <td colspan="4">
                    <asp:DropDownList ID="ddlOpinion" runat="server" Width="176px">
                        <asp:ListItem Selected="True">selecciona una opcion</asp:ListItem>
                        <asp:ListItem>No Evaluado</asp:ListItem>
                        <asp:ListItem>No viable</asp:ListItem>
                        <asp:ListItem>Viable</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Observaciones</td>
                <td colspan="4">
                    <asp:TextBox ID="txtObservaciones" runat="server" rows="5" Height="118px" Width="495px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="4">Integrantes</td>
            </tr>
        
            <tr>
                <td class="auto-style2" rowspan="2">
                    

                             

                    <asp:ListBox ID="ListBoxProfesor" runat="server" class="form-control input-lg"  Height="240px" Width="297px" SelectionMode="Multiple" AutoPostBack="false"></asp:ListBox>
<%--        </asp:SqlDataSource>      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_OBTENER_INTEGRANTE" SelectCommandType="StoredProcedure">  DataSourceID="SqlDataSource4" 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_OBTENER_INTEGRANTE" SelectCommandType="StoredProcedure" >
                     
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlPlantel" PropertyName="SelectedValue" Name="ID_PLANTEL" Type="Int32" DefaultValue="0" />
                        </SelectParameters>                    	
                    </asp:SqlDataSource>--%>
                          
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="ButtonAddProf" runat="server" Text="&gt;&gt;" Width="27px" OnClick="ButtonAddProf_Click" />
                </td>
                <td colspan="2" rowspan="2">
                    
                    <asp:ListBox ID="ListBoxProfProy" runat="server" class="form-control input-lg" Height="231px" Width="240px" SelectionMode="Multiple"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Buttondelprof" runat="server" Text="&lt;&lt;" />
                </td>
            </tr>
    
             <tr>
                <td class="auto-style2">&nbsp;</td>
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

