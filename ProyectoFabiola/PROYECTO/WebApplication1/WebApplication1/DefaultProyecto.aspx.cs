using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCEPI.Comun;

using PCEPI.Negocio;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

using WebApplication1;


namespace PCEPI
{
    public partial class DefaultProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlDataAdapter sql1 = new SqlDataAdapter("USP_PROYECTOS", conn);
            sql1.SelectCommand.CommandType = CommandType.StoredProcedure;
            sql1.SelectCommand.Parameters.Add("@Id_Periodo", SqlDbType.Char).Value = Session["Id_Proyecto"].ToString();

            if (Roles.IsUserInRole("Administrador"))
            {
                Label1.Text = Session["Proyecto"].ToString();
                Label2.Text = Session["Id_Area"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
                Label3.Text = Session["Id_Plantel"].ToString();
                Label4.Text = Session["usuario"].ToString();
                Label5.Text = Session["Id_Proyecto"].ToString();
                sql1.SelectCommand.Parameters.Add("@Id_Area", SqlDbType.Char).Value = Session["Id_Area"].ToString();
                sql1.SelectCommand.Parameters.Add("@Id_Plantel", SqlDbType.Char).Value = Session["Id_plantel"].ToString();
            }
            else
            {
                if (Roles.IsUserInRole("Jefe Sección"))
                {
                    Label1.Text = Session["Proyecto"].ToString();
                    //Label2.Text = Session["Id_Area"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
                    //Label3.Text = Session["Id_Plantel"].ToString();
                    Label2.Text = Session["areaUsuario"].ToString();
                    Label3.Text = Session["plantelUsuario"].ToString();
                    Label4.Text = Session["usuario"].ToString();
                    Label5.Text = Session["Id_Proyecto"].ToString();


                    sql1.SelectCommand.Parameters.Add("@Id_Area", SqlDbType.Char).Value = Session["areaUsuario"].ToString();
                    sql1.SelectCommand.Parameters.Add("@Id_Plantel", SqlDbType.Char).Value = Session["plantelUsuario"].ToString();
                    
//                    Session.Add("Area", Label2.Text);
                    Session.Add("Id_Area", Label2.Text);
                    Session.Add("Id_Plantel", Label3.Text);

                    // enviar el nombre del áre y el nombre dle plantel

                }
                else {
                    Response.Write("Sin rol definido");
                }

//
            }

            DataSet ds = new DataSet();
            sql1.Fill(ds);

            //Bind the Proyectos table to the parent Repeater control, and call DataBind.
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            //Close the connection.
            conn.Close();

        }

        protected void btCrearGrupo_Click(object sender, EventArgs e)
        {
            int sumaOpciones = 0;

            foreach (ListItem item in ChBtnProy.Items)
            {

                if (item.Selected)
                {

                    sumaOpciones += Int32.Parse(item.Value);
                }

            }

            switch (sumaOpciones)
            {
                case 0:
                    Label4.Text = "No se ha seleccionado Opcion ";
                    break;

                case 1:
                    Label4.Text = "InterArea";
                    break;
                case 2:
                    Label4.Text = "InterPlantel";
                    break;
                case 3:
                    Label4.Text = "InterArea - InterPlantel";
                    break;
                case 4:
                    Label4.Text = "Profesor";
                    break;
                case 5:
                    Label4.Text = "Profesor - InterArea";
                    break;
                case 6:
                    Label4.Text = "Profesor - InterPlantel";
                    break;
                case 7:
                    Label4.Text = "todos";
                    break;
                default:
                    Label4.Text = " ";

                    break;

            }

            Response.Redirect("AltaProyecto.aspx?opcion=" + sumaOpciones, false);
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;

        }

        protected void Repeater1_ItemDataBound(Object Sender, RepeaterItemEventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
//            Response.ContentType = "application/pdf";
//            Response.AddHeader("content-disposition",
//                "attachment;filename=Customers.pdf");
//            Response.Cache.SetCacheability(HttpCacheability.NoCache);
//            StringWriter sw = new StringWriter();
//            HtmlTextWriter hw = new HtmlTextWriter(sw);

//            this.Page.RenderControl(hw);
////            this.repCustomers.RenderControl(hw);
//            StringReader sr = new StringReader
//                (sw.ToString().Replace("\r", "")
//                .Replace("\n", "").Replace("  ", ""));

//            Document pdfDoc =
//                new Document(iTextSharp.text.PageSize.A4,
//                             10f, 10f, 10f, 0.0f);

//            iTextSharp.text.html.simpleparser.HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
//            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
//            pdfDoc.Open();
//            htmlparser.Parse(sr);
//            pdfDoc.Close();
//            Response.Write(pdfDoc);
//            Response.End();
        }


    }
}