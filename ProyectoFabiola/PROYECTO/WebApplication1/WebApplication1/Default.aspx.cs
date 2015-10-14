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
               LinkButton link = (LinkButton)LoginView1.FindControl("btnAdmin");
               link.Visible = true;

               LinkButton linkRU = (LinkButton)LoginView1.FindControl("btnRegistroUsuarios");
               linkRU.Visible = true;
           }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
        
        }
    }
}