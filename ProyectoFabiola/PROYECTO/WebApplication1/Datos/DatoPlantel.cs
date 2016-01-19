using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Configuration;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;

using Comun;

namespace Datos
{
    public class DatoPlantel
    {

         public DatoPlantel()
        {}
        
        public static string constr
        {
            get { return ConfigurationManager.ConnectionStrings["conn"].ConnectionString; }
        }

        public static string Provider
        {
            get { return ConfigurationManager.ConnectionStrings["conn"].ProviderName; }
        }

        public static System.Data.Common.DbProviderFactory dpf
        {
            get
            { return DbProviderFactories.GetFactory(Provider); }
        }
        private static int ejecutaNonQuery(string StoredProcedure, List<DbParameter> parametros)
        {
            int Id = 0;
            SqlConnection conn = new SqlConnection();
            try
            {
                using (conn)
                {
                    conn.ConnectionString = constr;

                    //usar la conexion 
                    using (DbCommand cmd = dpf.CreateCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = StoredProcedure;
                        //almacena el procedimiento generado
                        cmd.CommandType = CommandType.StoredProcedure;

                        foreach (DbParameter param in parametros)
                            cmd.Parameters.Add(param);
                        conn.Open();
                        Id = cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }

            return Id;
        }


        public String Obtener_Plantel(int Id_Plantel)
        {
            string Nombre = String.Empty;

            string StoredProcedure = "sp_Obtener_Plantel";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;

                    cmd.CommandText = StoredProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter param = new SqlParameter("@ID_PLANTEL", Id_Plantel);
                    // param.Direction = ParameterDirection.Input;
                    param.DbType = DbType.String;
                    cmd.Parameters.Add(param);
                    // cmd.Parameters.Add("@periodoletra", SqlDbType.VarChar).Value = periodoletra;

                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                             Nombre = (String)dr["NOMBRE"];
                            //LstCampos.Add(new Campos((int)dr["IDCampo"], (string)dr["Des_Corta"], (string)dr["Des_Larga"]));
                        }

                    }
                }
            }
            return Nombre ;
        }
 


    }
}
