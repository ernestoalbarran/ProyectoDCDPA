<%@ Page Title="Consulta Proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaProyecto.aspx.cs" Inherits="WebApplication1.ConsultaProyecto" %>

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
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Proyectos 2015-2016    Entidad1</h2>
            </hgroup>
        </div>

      <div class="panel-body">
        <div class=" col-md-10 col-lg-10 "> 

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
                <asp:tableCell class="auto-style1" ColumnSpan="4">GUIA PARA EL PROFESOR DE MATEMÁTICAS III.</asp:tableCell>
                <asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold Font-Size="XX-Large" RowSpan="2">01</asp:TableCell>
                <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="4">Guía para el profesor</asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Campo</asp:tableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="2">2. Formación Integral</asp:TableCell>
                <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell>
                <asp:TableCell class="auto-style1">Viable</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Tipo</asp:TableCell>
                <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> Interárea</asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox>Interplantel</asp:TableCell>
                <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" />c/ Profr. Asignatura</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Table ID="Table3" runat="server" class="table table-user-information">

            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" Font-Bold Font-Size="Large">Integrantes</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1">Gómez González Guillermo</asp:TableCell>
                <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1">Molina Tapia Alberto Héctor Manuel</asp:TableCell>
                <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
                <asp:TableCell class="auto-style1"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>Ramírez del Castillo Carlos</asp:TableCell>
                <asp:TableCell>Titular "C" T.C. Definitivo</asp:TableCell>
                <asp:TableCell>Sabático</asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
      </div>
          <br />
          <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" Height="311px" AllowPaging="True">
              <EditItemTemplate>
                  PERIODO:
                  <asp:TextBox ID="PERIODOTextBox" runat="server" Text='<%# Bind("PERIODO") %>' />
                  <br />
                  PLANTEL:
                  <asp:TextBox ID="PLANTELTextBox" runat="server" Text='<%# Bind("PLANTEL") %>' />
                  <br />
                  NUM_OFICIO:
                  <asp:TextBox ID="NUM_OFICIOTextBox" runat="server" Text='<%# Bind("NUM_OFICIO") %>' />
                  <br />
                  FECHA_EVAL:
                  <asp:TextBox ID="FECHA_EVALTextBox" runat="server" Text='<%# Bind("FECHA_EVAL") %>' />
                  <br />
                  TITULO:
                  <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
                  <br />
                  PRODUCTO:
                  <asp:TextBox ID="PRODUCTOTextBox" runat="server" Text='<%# Bind("PRODUCTO") %>' />
                  <br />
                  CAMPO:
                  <asp:TextBox ID="CAMPOTextBox" runat="server" Text='<%# Bind("CAMPO") %>' />
                  <br />
                  DESCRIPCION_PROY:
                  <asp:TextBox ID="DESCRIPCION_PROYTextBox" runat="server" Text='<%# Bind("DESCRIPCION_PROY") %>' />
                  <br />
                  OPINION_DIR:
                  <asp:TextBox ID="OPINION_DIRTextBox" runat="server" Text='<%# Bind("OPINION_DIR") %>' />
                  <br />
                  OBSERVACIONES:
                  <asp:TextBox ID="OBSERVACIONESTextBox" runat="server" Text='<%# Bind("OBSERVACIONES") %>' />
                  <br />
                  ID_AREA:
                  <asp:TextBox ID="ID_AREATextBox" runat="server" Text='<%# Bind("ID_AREA") %>' />
                  <br />
                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </EditItemTemplate>

              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              
              <InsertItemTemplate>
                  PERIODO:
                  <asp:TextBox ID="PERIODOTextBox" runat="server" Text='<%# Bind("PERIODO") %>' />
                  <br />
                  PLANTEL:
                  <asp:TextBox ID="PLANTELTextBox" runat="server" Text='<%# Bind("PLANTEL") %>' />
                  <br />
                  NUM_OFICIO:
                  <asp:TextBox ID="NUM_OFICIOTextBox" runat="server" Text='<%# Bind("NUM_OFICIO") %>' />
                  <br />
                  FECHA_EVAL:
                  <asp:TextBox ID="FECHA_EVALTextBox" runat="server" Text='<%# Bind("FECHA_EVAL") %>' />
                  <br />
                  TITULO:
                  <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
                  <br />
                  PRODUCTO:
                  <asp:TextBox ID="PRODUCTOTextBox" runat="server" Text='<%# Bind("PRODUCTO") %>' />
                  <br />
                  CAMPO:
                  <asp:TextBox ID="CAMPOTextBox" runat="server" Text='<%# Bind("CAMPO") %>' />
                  <br />
                  DESCRIPCION_PROY:
                  <asp:TextBox ID="DESCRIPCION_PROYTextBox" runat="server" Text='<%# Bind("DESCRIPCION_PROY") %>' />
                  <br />
                  OPINION_DIR:
                  <asp:TextBox ID="OPINION_DIRTextBox" runat="server" Text='<%# Bind("OPINION_DIR") %>' />
                  <br />
                  OBSERVACIONES:
                  <asp:TextBox ID="OBSERVACIONESTextBox" runat="server" Text='<%# Bind("OBSERVACIONES") %>' />
                  <br />
                  ID_AREA:
                  <asp:TextBox ID="ID_AREATextBox" runat="server" Text='<%# Bind("ID_AREA") %>' />
                  <br />
                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </InsertItemTemplate>

              <ItemTemplate>

                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad">
                <div class="panel panel-info">

                <div class="panel-heading">
                <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Proyectos   <asp:Label ID="PERIODOLabel" runat="server" Text='<%# Bind("PERIODO") %>' />   Entidad1</h2>
                 <br />
                </hgroup>
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
                <asp:Table ID="Table2" runat="server" class="table table-user-information">
                    <asp:TableRow>
                        <asp:TableCell class="auto-style1">Grupo</asp:TableCell>
                        <asp:tableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="TITULOLabel" runat="server" Text='<%# Bind("TITULO") %>' /></asp:tableCell>
                        <asp:TableCell class="auto-style1"><asp:Button ID="Button4" runat="server" Text="Borrar" /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell class="auto-style1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold Font-Size="XX-Large" RowSpan="2">01</asp:TableCell>
                        <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Producto</asp:tableCell>
                        <asp:TableCell class="auto-style1" ColumnSpan="4"><asp:Label ID="PRODUCTOLabel" runat="server" Text='<%# Bind("PRODUCTO") %>' /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:tableCell class="auto-style1" Font-Bold Font-Size="Medium">Campo</asp:tableCell>
                        <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:Label ID="CAMPOLabel" runat="server" Text='<%# Bind("CAMPO") %>' /></asp:TableCell>
                        <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Opinión</asp:TableCell>
                        <asp:TableCell class="auto-style1"><asp:Label ID="OPINION_DIRLabel" runat="server" Text='<%# Bind("OPINION_DIR") %>' /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell class="auto-style1"> <asp:Button ID="Button3" runat="server" Text="Editar" /></asp:TableCell>
                        <asp:TableCell class="auto-style1" Font-Bold Font-Size="Medium">Tipo</asp:TableCell>
                        <asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> Interárea</asp:TableCell><asp:TableCell class="auto-style1"><asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox>Interplantel</asp:TableCell>
                        <asp:TableCell class="auto-style1" ColumnSpan="2"><asp:CheckBox ID="CheckBox3" runat="server" />c/ Profr. Asignatura</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
               <asp:Table ID="Table3" runat="server" class="table table-user-information">
                    
                    <asp:TableRow>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" Font-Bold Font-Size="Large">Integrantes</asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1">Gómez González Guillermo</asp:TableCell>
                        <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1">Molina Tapia Alberto Héctor Manuel</asp:TableCell>
                        <asp:TableCell class="auto-style1">Titular "C" T.C. Definitivo</asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                        <asp:TableCell class="auto-style1"></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell>Ramírez del Castillo Carlos</asp:TableCell>
                        <asp:TableCell>Titular "C" T.C. Definitivo</asp:TableCell>
                        <asp:TableCell>Sabático</asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                  <br />
                  PLANTEL:
                  <asp:Label ID="PLANTELLabel" runat="server" Text='<%# Bind("PLANTEL") %>' />
                  <br />
                  NUM_OFICIO:
                  <asp:Label ID="NUM_OFICIOLabel" runat="server" Text='<%# Bind("NUM_OFICIO") %>' />
                  <br />
                  FECHA_EVAL:
                  <asp:Label ID="FECHA_EVALLabel" runat="server" Text='<%# Bind("FECHA_EVAL") %>' />
                  <br />
                  DESCRIPCION_PROY:
                  <asp:Label ID="DESCRIPCION_PROYLabel" runat="server" Text='<%# Bind("DESCRIPCION_PROY") %>' />
                  <br />
                  OBSERVACIONES:
                  <asp:Label ID="OBSERVACIONESLabel" runat="server" Text='<%# Bind("OBSERVACIONES") %>' />
                  <br />
                  ID_AREA:
                  <asp:Label ID="ID_AREALabel" runat="server" Text='<%# Bind("ID_AREA") %>' />
                  <br />
                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                  &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
              </div>
              </div>
              </ItemTemplate>

              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          </asp:FormView>
    </div>

</div>
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PLANTEL], [PERIODO], [NUM_OFICIO], [FECHA_EVAL], [TITULO], [PRODUCTO], [CAMPO], [DESCRIPCION_PROY], [OPINION_DIR], [OBSERVACIONES], [ID_AREA] FROM [PROYECTO]" DeleteCommand="usp_ListProyecto_DeleteProyecto" DeleteCommandType="StoredProcedure" InsertCommand="usp_AltaProyecto_Insertar" InsertCommandType="StoredProcedure" UpdateCommand="usp_Actualizar_Proyecto" UpdateCommandType="StoredProcedure">
              <DeleteParameters>
                  <asp:Parameter Name="Id" Type="Int32" />
              </DeleteParameters>

              <InsertParameters>
                  <asp:Parameter Name="PERIODO" Type="String" />
                  <asp:Parameter Name="PLANTEL" Type="String" />
                  <asp:Parameter Name="ID_AREA" Type="Int32" />
                  <asp:Parameter Name="NUM_OFICIO" Type="String" />
                  <asp:Parameter Name="FECHA_EVAL" Type="DateTime" />
                  <asp:Parameter Name="TITULO" Type="String" />
                  <asp:Parameter Name="PRODUCTO" Type="String" />
                  <asp:Parameter Name="CAMPO" Type="String" />
                  <asp:Parameter Name="MATERIA" Type="String" />
                  <asp:Parameter Name="DESCRIPCION_PROY" Type="String" />
                  <asp:Parameter Name="OPINION_DIR" Type="String" />
                  <asp:Parameter Name="OBSERVACIONES" Type="String" />
                  <asp:Parameter Name="PROFESOR" Type="String" />
              </InsertParameters>

              <UpdateParameters>
                  <asp:Parameter Name="ID_PROYECTO" Type="Int32" />
                  <asp:Parameter Name="PERIODO" Type="String" />
                  <asp:Parameter Name="PLANTEL" Type="String" />
                  <asp:Parameter Name="ID_AREA" Type="Int32" />
                  <asp:Parameter Name="NUM_OFICIO" Type="String" />
                  <asp:Parameter Name="FECHA_EVAL" Type="DateTime" />
                  <asp:Parameter Name="TITULO" Type="String" />
                  <asp:Parameter Name="PRODUCTO" Type="String" />
                  <asp:Parameter Name="CAMPO" Type="String" />
                  <asp:Parameter Name="MATERIA" Type="String" />
                  <asp:Parameter Name="DESCRIPCION_PROY" Type="String" />
                  <asp:Parameter Name="OPINION_DIR" Type="String" />
                  <asp:Parameter Name="OBSERVACIONES" Type="String" />
                  <asp:Parameter Name="PROFESOR" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          </div>
    </asp:Content>