<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Firmantes.aspx.cs" Inherits="WebApplication1.Firmantes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <!--<div class="row">
      <div class="col-md-7  toppad  pull-right col-md-offset-3 ">
           <A href="edit.html" >Edit Profile</A>

            <A href="edit.html" >Logout</A>
       <br>
<p class=" text-info">May 05,2014,03:00 pm </p>
      </div>-->
          
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><asp:Label ID="lbNombre" runat="server" Text="Firmantes para la carta de consejo"></asp:Label></h3>
   
            </div>
            <div class="panel-body">
              <div class="row">
                
         
                <div class=" col-md-10 col-lg-10 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Jefe de Sección:</td>
                          <td colspan=5>
                              <asp:TextBox ID="tbJefe" runat="server" class="form-control input-lg" placeholder="Jefe de Sección"
                                  TabIndex="2"></asp:TextBox>
                          </td>
                      </tr>

                        <tr>
                        <td>Siglas de elaboración del oficio:</td>
                          <td colspan=5>
                              <asp:TextBox ID="tbSiglas" runat="server" class="form-control input-lg" placeholder="Siglas de elaboración"
                                  TabIndex="2"></asp:TextBox>
                          </td>
                      </tr>
                        <tr>
                        <td>Consejero1:</td>
                        <td colspan=2><asp:TextBox ID="tbConsejero1" runat="server" class="form-control input-lg" placeholder="Consejero1" tabindex="1" disabled></asp:TextBox></td>
                        <td>Consejero2</td>
                        <td colspan=2><asp:TextBox ID="tbnConsejero2" runat="server" class="form-control input-lg" placeholder="Consejero2" tabindex="7" disabled></asp:TextBox></td>
                      </tr>

                       <tr>
                        <td>Consejero3:</td>
                        <td colspan=2><asp:TextBox ID="tbConsejero3" runat="server" class="form-control input-lg" placeholder="Consejero3" tabindex="1" disabled></asp:TextBox></td>
                        <td>Consejero4</td>
                        <td colspan=2><asp:TextBox ID="tbConsejero4" runat="server" class="form-control input-lg" placeholder="Consejero4" tabindex="7" disabled></asp:TextBox></td>
                      </tr>


                        <tr>
                        <td>Consejero5:</td>
                        <td colspan=2><asp:TextBox ID="tbConsejero5" runat="server" class="form-control input-lg" placeholder="Consejero5" tabindex="1" disabled></asp:TextBox></td>
                        <td>Consejero6</td>
                        <td colspan=2><asp:TextBox ID="tbConsejeto6" runat="server" class="form-control input-lg" placeholder="Consejero6" tabindex="7" disabled></asp:TextBox></td>
                      </tr>
      
                        
                        
                        <tr>
                            <td>
                                Fecha del Oficio
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="tbFecha" runat="server" class="form-control input-lg" placeholder="Fecha Oficio"
                                    TabIndex="18"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                  </table>
       
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <asp:LinkButton ID="LnkModificar" runat="server" 
                            data-original-title="Editar Profesor" data-toggle="tooltip" type="button" 
                            class="btn btn-sm btn-warning" onclick="LnkModificar_Click"><i class="glyphicon glyphicon-edit"></i></asp:LinkButton>
                            <asp:LinkButton ID="LnkNuevo" runat="server" 
                            data-original-title="Insertar nuevo profesor" data-toggle="tooltip" type="button" 
                            class="btn btn-sm btn-success" onclick="LnkNuevo_Click"><i class="glyphicon glyphicon-user"></i></asp:LinkButton>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          </div>
        </div>
      

    
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="Data Source=132.248.122.35;Initial Catalog=Maestros;User ID=sa;Password=..Wally1584" 
          ProviderName="System.Data.SqlClient" SelectCommand="select n_plantel, nombre_p from planteles
where n_plantel &lt;&gt; ''
order by n_plantel" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="Data Source=132.248.122.35;Initial Catalog=Maestros;User ID=sa;Password=..Wally1584" 
          ProviderName="System.Data.SqlClient" SelectCommand="select '', '[Seleccione Género]'
UNION
select 'M' idGenero,'Masculino' Genero
UNION
select 'F' idGenero,'Femenino' Genero"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
          ConnectionString="<%$ ConnectionStrings:MaestrosConnectionString %>"
          ProviderName="System.Data.SqlClient" SelectCommand="select clave_a, nombre_a from areas
where clave_a &lt;&gt; ''
order by clave_a"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
          ConnectionString="<%$ ConnectionStrings:MaestrosConnectionString %>" 
          SelectCommand="CargarDelegaciones" SelectCommandType="StoredProcedure">
          <SelectParameters>
              <asp:ControlParameter ControlID="ddlEstado" Name="idEstado" 
                  PropertyName="SelectedValue" Type="Int32" 
                  DefaultValue="0" />
          </SelectParameters>
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
          ConnectionString="Data Source=132.248.122.35;Initial Catalog=Maestros;User ID=sa;Password=..Wally1584" 
          ProviderName="System.Data.SqlClient" 
          SelectCommand="select idEstado, Estado from Estados"></asp:SqlDataSource>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
      </asp:Content>
