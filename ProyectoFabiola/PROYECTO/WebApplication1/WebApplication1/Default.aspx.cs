using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Roles.IsUserInRole("Administrador")) 
           {
               Session["usuario"] = "Administrador";
               /*
               LinkButton link = (LinkButton)LoginView1.FindControl("btnAdmin");
               link.Visible = true;

               LinkButton linkRU = (LinkButton)LoginView1.FindControl("btnRegistroUsuarios");
               linkRU.Visible = true;

               LinkButton linkLemas = (LinkButton)LoginView1.FindControl("lbtnLemas");
               linkLemas.Visible = true;

               LinkButton linkPeriodo = (LinkButton)LoginView1.FindControl("lbtnPeriodo");
               linkPeriodo.Visible = true;

               LinkButton linkCampos = (LinkButton)LoginView1.FindControl("lbtnCampos");
               linkCampos.Visible = true;
                */
               Response.Redirect("~/Principal.aspx");
           
           }

           if (Roles.IsUserInRole("Jefe Sección")) 
           {
               Session["usuario"] = "Jefe Sección";
               
               string usuarioActual = HttpContext.Current.User.Identity.Name;
               Session["nombreUsuario"] = usuarioActual;
               Console.WriteLine((string)Session["nombreUsuario"]);

               int plantel = Int32.Parse(usuarioActual.Substring(5, 1));
               Session["plantelUsuario"] = plantel;
               Console.WriteLine((int)Session["plantelUsuario"]);


               int area = Int32.Parse(usuarioActual.Substring(7, 1));
               Session["areaUsuario"] = area;
               Console.WriteLine((int)Session["areaUsuario"]);

               Response.Redirect("~/Principal.aspx"); 
           }
              
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
        
        }
    }
}