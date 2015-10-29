using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Configuration;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;

using DGCCH.Comun;

namespace DGCCH.Datos
{
    public class DatoCampo
    {

        public DatoCampo()
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


        public int InsertCampo(string Des_Corta, string Des_Larga)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramDes_Corta = dpf.CreateParameter();
            paramDes_Corta.Value = Des_Corta;
            paramDes_Corta.ParameterName = "Des_Corta";
            parametros.Add(paramDes_Corta);

            DbParameter paramDes_Larga = dpf.CreateParameter();
            paramDes_Larga.Value = Des_Larga;
            paramDes_Larga.ParameterName = "Des_Larga";
            parametros.Add(paramDes_Larga);

        return ejecutaNonQuery("AltasCampos", parametros);
        }

        public List<Campos> select_All_Campos()
        {
            List<Campos> LstCampos = new List<Campos>();

            string StoredProcedure = "ObtenerCampo";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = StoredProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            LstCampos.Add(new Campos((int)dr["IDCampo"], (string)dr["Des_Corta"], (string)dr["Des_Larga"]));
                        }

                    }
                }
            }
            return LstCampos;
        }
 


    }
}