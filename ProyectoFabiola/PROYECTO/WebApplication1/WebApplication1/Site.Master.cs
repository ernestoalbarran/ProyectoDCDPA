﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;

                if ((string)Session["usuario"] == "Administrador") 
                {
                    lplantel.Visible = true;
                    ddlPlantel.Visible = true;
                    larea.Visible = true;
                    ddlArea.Visible = true;
                }
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if ((string)Session["usuario"] == "Administrador")
            {
                Session.Add("Plantel", ddlPlantel.SelectedItem.Text);
                Session.Add("Id_Plantel", ddlPlantel.SelectedItem.Value);
                Session.Add("Proyecto", ddlProyecto.SelectedItem.Text);
                Session.Add("Id_Proyecto", ddlProyecto.SelectedItem.Value);
                Session.Add("Area", ddlArea.SelectedItem.Text);
                Session.Add("Id_Area", ddlArea.SelectedItem.Value);
                //Session.Add("Materia", ddlMateria.SelectedItem.Text);
                //Session.Add("id_Materia", ddlMateria.SelectedItem.Value);
                Response.Redirect("~/DefaultProyecto.aspx");
            }

            /*
            if ((string)Session["usuario"] == "Jefe Sección")
            {
                //Session.Add("Plantel", ddlPlantel.SelectedItem.Text);
                //Session.Add("Id_Plantel", ddlPlantel.SelectedItem.Value);
                //Session.Add("Proyecto", ddlProyecto.SelectedItem.Text);
                //Session.Add("Id_Proyecto", ddlProyecto.SelectedItem.Value);
                //Session.Add("Area", ddlArea.SelectedItem.Text);
                //Session.Add("Id_Area", ddlArea.SelectedItem.Value);
                //Session.Add("Materia", ddlMateria.SelectedItem.Text);
                //Session.Add("id_Materia", ddlMateria.SelectedItem.Value);
                Session.Add("Proyecto", ddlProyecto.SelectedItem.Text);
                Session.Add("Id_Proyecto", ddlProyecto.SelectedItem.Value);

                Response.Redirect("~/DefaultProyecto.aspx");
            }
             * */
        }

        protected void ddlPlantel_SelectedIndexChanged(object sender, EventArgs e)
        {

            Session["Plantel"] = ddlPlantel.SelectedItem.Text;
            Session["Id_Plantel"] = ddlPlantel.SelectedItem.Value;
            Response.Redirect("~/DefaultProyecto.aspx");
        }

        protected void ddlProyecto_SelectedIndexChanged(object sender, EventArgs e)
        {

            Session["Proyecto"] = ddlProyecto.SelectedItem.Text;
            Session["Id_Proyecto"] = ddlProyecto.SelectedItem.Value;
            Response.Redirect("~/DefaultProyecto.aspx");
        }

        protected void ddlArea_SelectedIndexChanged(object sender, EventArgs e)
        {


            Session["Area"] = ddlArea.SelectedItem.Text;
            Session["Id_Area"] = ddlArea.SelectedItem.Value;
            Response.Redirect("~/DefaultProyecto.aspx");
        }
        protected void ddlPlantel_DataBound(object sender, EventArgs e)
        {
            string prueba = Session["Id_Plantel"].ToString();
            ddlPlantel.SelectedValue = prueba;

        }

        protected void ddlProyecto_DataBound(object sender, EventArgs e)
        {
            ddlProyecto.SelectedValue = Session["Id_Proyecto"].ToString();
        }

        protected void ddlArea_DataBound(object sender, EventArgs e)
        {
            ddlArea.SelectedValue = Session["Id_Area"].ToString(); ;
        }


       
    }
}