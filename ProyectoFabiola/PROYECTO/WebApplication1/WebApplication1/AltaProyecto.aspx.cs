using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AltaProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBoxMateriasP.Items.Add(ListBoxMaterias.SelectedItem);
            ListBoxMaterias.Items.Remove(ListBoxMaterias.SelectedItem);
        }

        protected void ListBoxMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMateriasP_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonAddProf_Click(object sender, EventArgs e)
        {
            Lis
        }

    }
}