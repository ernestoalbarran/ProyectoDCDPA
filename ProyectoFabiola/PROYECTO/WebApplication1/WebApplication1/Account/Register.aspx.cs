using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

namespace WebApplication1.Account
{
    public partial class Register : Page
    {
        string[] roles;

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];

            if (!IsPostBack) 
            {
            //    MembershipUserCollection users = Membership.GetAllUsers();
            //    DropDownList1.DataSource = users;
            //    DropDownList1.DataBind();

               // -- bind Listbox1 to Users 
                //roles = Roles.GetAllRoles();
                //DropDownList1.DataSource = roles;
            }


        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }
        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}