using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

using Comun;
using Negocio;
namespace WebApplication1
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            string ip = Request.ServerVariables["REMOTE_ADDR"];
            Session["usuarioIP"] = ip;

           if (Roles.IsUserInRole("Administrador")) 
           {
               Session["usuario"] = "Administrador";
               string usuarioActual = HttpContext.Current.User.Identity.Name;

               //<!--  Parte Prueba variables de sesión-------------------------------->

               Session["plantelUsuario"] = 1;
               Session["areaUsuario"] = 1;
               //<!--  Parte Prueba variables de sesión-------------------------------->


               //El ADMINISTRADOR POR DEFAULT SE PONEN LOS VALORES EN 1. 
               Session["Id_Plantel"] = 1;
               Session["Id_Proyecto"] = 1;
               Session["Id_Area"] = 1;
               Session["Plantel"] = "Azcapotzalco";
               Session["Proyecto"] = "2006-2007";
               Session["Area"] = "Matemáticas";

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
               Response.Redirect("~/DefaultProyecto.aspx");
           
           }

           if (Roles.IsUserInRole("Jefe Sección")) 
           {
               Session["usuario"] = "Jefe Sección";

               string usuarioActual = HttpContext.Current.User.Identity.Name;
               Session["nombreUsuario"] = usuarioActual;
            //   Console.WriteLine((string)Session["nombreUsuario"]);

               int plantel = Int32.Parse(usuarioActual.Substring(5, 1));
               Session["plantelUsuario"] = plantel;
               //Repetí la asignación para mantener el mismo nombre que se utiliza en otras páginas y no se si usan la de arriba
               Session["Id_Plantel"] = plantel;
              // Console.WriteLine((int)Session["plantelUsuario"]);

               //PROCEDIMIENTO PARA OBTENER EL PLANTEL APARTIR DEL ID -------------------------
               NegocioPlantel obtenerPlantel = new NegocioPlantel();
               Session["Plantel"] = obtenerPlantel.Obtener_Plantel(plantel);


               int area = Int32.Parse(usuarioActual.Substring(7, 1));
               Session["areaUsuario"] = area;
               //Repetí la asignación para mantener el mismo nombre que se utiliza en otras páginas y no se si usan la de arriba
               Session["Id_Area"] = area;
               //Console.WriteLine((int)Session["areaUsuario"]);

               //PROCEDIMIENTO PARA OBTENER EL AREA APARTIR DEL ID-----------------------------

               NegocioArea obtenerArea = new NegocioArea();
               Session["Area"] = obtenerArea.Obtener_Area(area);

               //PARA OBTENER EL Periodo ACTIVO. Se hizo una tabla donde se pone el Proyecto Activo
               NegocioActivo obtenerActivo = new NegocioActivo();
               //Session["informe_activo"] = obtenerActivo.select_escalar("Informes");
               Session["Proyecto"] = obtenerActivo.select_escalar("Proyecto");
               Session["Id_Proyecto"] = 10;  //El periodo activo en la tabla periodos es el 5
               //activo = Session["informe_activo"].ToString();
               Response.Redirect("~/DefaultProyecto.aspx");
           }
              
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
        
        }
            }
}