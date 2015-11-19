using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Data;

using Comun;
using Negocio;

namespace WebApplication1
{
    public partial class Firmantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

        
                //NegocioFirmante1 NegFirm = new NegocioFirmante1();
                //if (NegFirm.AltaFirmante1((Convert.ToInt32(Session["Id_Plantel"])), 
                //    ( Convert.ToInt32(Session["Id_Area"].ToString())), 
                //    ddlJefe.DataValueField, ddlConsejero1.DataValueField,
                //    ddlConsejero2.DataValueField, ddlConsejero3.DataValueField, 
                //    ddlConsejero4.DataValueField, ddlConsejero5.DataValueField,
                //ddlConsejero6.DataValueField, tbSiglas.Text,Convert.ToDateTime(tbFecha.Text),
                //(Convert.ToInt32(Session["Id_Proyecto"].ToString()))) > 0)
                //{
                   
                //    MessageBox.Show("Campo Insertado");
                //}




                NegocioFirmante1 NegFirm = new NegocioFirmante1();
                if (NegFirm.AltaFirmante1((Convert.ToInt32(Session["Id_Plantel"])),
                    (Convert.ToInt32(Session["Id_Area"].ToString())),
                    ddlJefe.Text, ddlConsejero1.Text,
                    ddlConsejero2.Text, ddlConsejero3.Text,
                    ddlConsejero4.Text, ddlConsejero5.Text,
                ddlConsejero6.Text, tbSiglas.Text, Convert.ToDateTime(tbFecha.Text),
               (Convert.ToInt32(Session["Id_Proyecto"].ToString()))) > 0)
                {

                    MessageBox.Show("Campo Insertado");
                    Response.Redirect("AltaProyecto.aspx");

                }
            }
           



  }
}
