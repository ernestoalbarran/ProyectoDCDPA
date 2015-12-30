<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>DCDPA</h2>
    </hgroup>

    <article>
        <p>        
            Dirección General del CCH
        </p>

        <p>        
            Secretaría General
        </p>

        <p>        
            Departamento de Control de Datos del Personal Académico
        </p>
    </article>

    <aside>
        <h3>Contáctenos</h3>
        <p>        
            5622 0182
        </p>
        <ul>
            <li><a runat="server" href="~/">Inicio</a></li>
            <li><a runat="server" href="http://www.cch.unam.mx/" Target="_blank">Colegio de Ciencias y Humanidades</a></li>
            <li><a runat="server" href="https://www.unam.mx/" Target="_blank">UNAM</a></li>
        </ul>
    </aside>
</asp:Content>