<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="WebApplication1.Documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<style type="text/css">
#contenedor {
    display: table;
    width: 600px;
    text-align: center;
    margin: 0 auto;
}
#contenidos {
    display: table-row;
}
#columna1, #columna2 {
    display: table-cell;
    vertical-align: middle;
    padding: 10px;
}
</style>

    
<div id="contenedor">
    <div id="contenidos">
        <div id="columna1">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Documentos/Suplemento2015-2016.pdf" Target="_blank">Campos de Actividad Proyectos 2015-2016</asp:HyperLink> 
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/Campos_de_Actividad_Proyectos_2015-2016.png" ImageHeight="60%" NavigateUrl="~/Documentos/Suplemento2015-2016.pdf" Target="_blank">HyperLink</asp:HyperLink>
        </div>
        <div id="columna2">
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Documentos/Suplemento_Especial_13.pdf" Target="_blank">Creación de Grupos</asp:HyperLink> 
            <br /> 
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Creacion_de_Grupos.png" ImageHeight="61%" NavigateUrl="~/Documentos/Suplemento_Especial_13.pdf" Target="_blank">HyperLink</asp:HyperLink>
        </div>
    </div>
    <div id="contenidos">
        <div id="columna1">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Documentos/Protocolo2008.pdf" Target="_blank">Protocolo de equivalencias</asp:HyperLink> 
            <br /> 
            <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Protocolo_de_equivalencias.png" ImageHeight="60%" NavigateUrl="~/Documentos/Protocolo2008.pdf" Target="_blank">HyperLink</asp:HyperLink></div>
        <div id="columna2">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Documentos/Protocolo.pdf" Target="_blank">Actualización del Protocolo de equivalencias</asp:HyperLink> 
            <br /> 
            <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/Actualizacion_del_Protocolo_de_equivalencias.png" ImageHeight="61%" NavigateUrl="~/Documentos/Protocolo.pdf" Target="_blank">HyperLink</asp:HyperLink></div>
    </div>
</div>
    

</asp:Content>
