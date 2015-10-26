using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Text;


namespace WebApplication1
{
    public partial class AltaProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBoxMaterias.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione una materia por favor");
            }
            else
            {
                ListBoxMateriasP.Items.Add(ListBoxMaterias.SelectedItem);
                ListBoxMaterias.Items.Remove(ListBoxMaterias.SelectedItem);
            }
        }

        protected void ButtonAddProf_Click(object sender, EventArgs e)
        {
            if (ListBoxProfesor.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione por lo menos un profesor");
            }
            else
            {
                ListBoxProfProy.Items.Add(ListBoxProfesor.SelectedItem);
                ListBoxProfesor.Items.Remove(ListBoxProfProy.SelectedItem);
            }
        }

        protected void ListBoxMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMateriasP_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("Proyecto almacenado exitosamente");
        }

        protected void ButtonLimpiar_Click(object sender, EventArgs e)
        {
            ListBoxProfProy.Items.Clear();
            ListBoxMateriasP.Items.Clear();
            
            foreach (System.Windows.Forms.TextBox txt in this.Controls)
            {
                txt.Clear();
            }
        }


       
       
    }
}