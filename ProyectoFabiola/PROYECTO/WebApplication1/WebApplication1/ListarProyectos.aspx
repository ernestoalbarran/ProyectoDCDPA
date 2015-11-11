<%@ Page Title="DGCCH" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarProyectos.aspx.cs" Inherits="WebApplication1.ListarProyectos" %>

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
            width: 169px;
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
              <h2>Listado Proyectos&nbsp;
                  <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
               </h2>    
          </div>
            
           <div class="panel-body">
                <div class=" col-md-10 col-lg-10 "> 
        
                               
               <asp:GridView ID="GridProyectos" runat="server" EmptyDataText="No existen Proyectos" OnRowCommand="GridProyectos_RowCommand" OnSelectedIndexChanged="GridProyectos_SelectedIndexChanged" AutoGenerateColumns="False">
                <Columns>
                     <asp:TemplateField  HeaderText="Id" HeaderStyle-Width="30px">
                      <ItemTemplate>
                          <asp:Label runat="server" ID="lblProyecto" Text='<%# Eval("ID_PROYECTO") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="PLANTEL" HeaderStyle-Width="100px">
                      <ItemTemplate>
                          <asp:Label runat="server" ID="lblPLANTEL" Text='<%# Eval("PLANTEL") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                   <asp:TemplateField HeaderText="PERIODO" HeaderStyle-Width="150px">
                      <ItemTemplate>
                          <asp:Label runat="server" ID="lblPERIODO" Text='<%# Eval("PERIODO") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                   <asp:TemplateField HeaderText="TITULO" HeaderStyle-Width="100px">
                      <ItemTemplate>
                          <asp:Label runat="server" ID="lblTITULO" Text='<%# Eval("TITULO") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Acciones" HeaderStyle-Width="100px">
                      <ItemTemplate>
                         <!-- <asp:ImageButton runat="server" ID="btnEditar" AlternateText="Editar Cliente" ToolTip="Editar Cliente" CssClass="cBotones" ImageUrl="~/Images/edit.png" CommandName="EditarCliente" CommandArgument=/>-->
                          <asp:ImageButton runat="server" ID="btnEliminar" AlternateText="Eliminar Proyecto" ToolTip="Eliminar Proyecto" CssClass="cBotones" ImageUrl="~/Images/eliminar.gif"  CommandName="EliminarProyecto" CommandArgument='<%# Eval("ID_PROYECTO") %>'/>
                      </ItemTemplate>
                  </asp:TemplateField>
               </Columns>
           </asp:GridView>
    </div>
    </div>
    </div>           
</div>
        
      <script src= "/newdcdpa/Scripts/Templates/Formularioggroups.js" type="text/javascript"></script>
      <script src= "/newdcdpa/Scripts/habilitar_inhabilitar_controles.js" type="text/javascript" > </script>
</asp:Content>
