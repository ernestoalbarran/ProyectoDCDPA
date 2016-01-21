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


                  //<!--  Parte Prueba variables de sesión-------------------------------->

            <td >
                   Plantel
                    <asp:Label ID="lblP" runat="server" Text="Label" ></asp:Label>
                </td>

            <td >
     
            <td >
                   Proyecto
                    <asp:Label ID="lblProyecto" runat="server" Text="Label" ></asp:Label>
                </td>

            <td >
                   Area
                    <asp:Label ID="lblArea" runat="server" Text="Label" ></asp:Label>
                </td>

                     //<!--  Parte Prueba variables de sesión-------------------------------->


              <h2>Alta Firmantes
                  <asp:Label ID="lblTitulo" runat="server" ></asp:Label>
                  </h2>
   
            </div>
            <div class="panel-body">
              <div class="row">
                
         
                <div class=" col-md-10 col-lg-10 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Jefe de Sección:</td>
                          <td colspan=5><asp:DropDownList ID="ddlJefe" runat="server" class="form-control" tabindex="5" >
                            </asp:DropDownList>
                        
                          </td>
                      </tr>

                        <tr>
                        <td>Siglas de elaboración del oficio:</td>
                          <td colspan=5>
                              <asp:TextBox ID="tbSiglas" runat="server" class="form-control input-lg" placeholder="Siglas de elaboración"
                                  TabIndex="2"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbSiglas" ErrorMessage="Necesita Siglas" ForeColor="Red"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                        <tr>
                        <td>Consejero1:</td>
                       <td colspan=2><asp:DropDownList ID="ddlConsejero1" runat="server" class="form-control" tabindex="5">
                            </asp:DropDownList>
                        </td> 
                        <td>Consejero2</td>
                       <td colspan=2><asp:DropDownList ID="ddlConsejero2" runat="server" class="form-control" tabindex="5">
                            </asp:DropDownList>
                        </td>

                        </tr>

                       <tr>
                        <td>Consejero3:</td>
                        <td colspan=2><asp:DropDownList ID="ddlConsejero3" runat="server" class="form-control" tabindex="5">
                            </asp:DropDownList>
                        </td>
                        <td>Consejero4</td>
                       
                            <td colspan=2><asp:DropDownList ID="ddlConsejero4" runat="server" class="form-control" tabindex="5">
                            </asp:DropDownList>
                        </td>
                                </tr>


                        <tr>
                        <td>Consejero5:</td>

                             <td colspan=2><asp:DropDownList ID="ddlConsejero5" runat="server" class="form-control" tabindex="5">
                            </asp:DropDownList>
                        </td>
                          <td>Consejero6</td>
                        <td colspan=2><asp:DropDownList ID="ddlConsejero6" runat="server" class="form-control" tabindex="5" >
                            </asp:DropDownList>
                        </td>  
                        </tr>
                        
                        <tr>
                            <td>
                                Fecha del Oficio
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="tbFecha" runat="server" class="form-control input-lg" placeholder="Fecha Oficio"
                                    TabIndex="18" TextMode="Date">

                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="tbFecha" ErrorMessage="Necesita Fecha" ForeColor="Red"></asp:RequiredFieldValidator>

                               

<%--                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Es necesario ingresar fecha" ControlToValidate="tbFecha"></asp:RequiredFieldValidator>--%>
                                </td>
                        </tr>
                    </tbody>
                  </table>
       
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <tr>
                 <td >

                     
                        <asp:Button ID="btnInsert" runat="server" Text="Guardar
                            " OnClick="btnInsert_Click" class="btn btn-primary" />
                 </td>      
               
            </tr>   

                 </div>
            
          </div>
        </div>
      

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SP_OBTENER_FIRMANTE1" SelectCommandType="StoredProcedure">
     <SelectParameters>
                            <asp:ControlParameter ControlID="ddlPlantel" PropertyName="SelectedValue" Name="idPlantel" Type="Int32" DefaultValue="0" />
                            <asp:ControlParameter ControlID="ddlArea" PropertyName="SelectedValue" Name="idArea" Type="Int32" DefaultValue="0" />
                            

        </SelectParameters>  
         
          </asp:SqlDataSource>
    
                 
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
      <script src= "/WebApplication1/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/WebApplication1/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
      </asp:Content>
