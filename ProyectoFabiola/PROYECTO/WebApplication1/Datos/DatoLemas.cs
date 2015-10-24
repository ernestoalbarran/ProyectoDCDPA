using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.Common;
using System.Data;
using PCEPI.Comun;
using System.Data.SqlClient;

namespace PCEPI.Datos
{
    public class DatoLemas
    {
        public DatoLemas()
        { }

        public static string constr
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ConnectionString; }
        }

        public static string Provider
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ProviderName; }
        }

        public static System.Data.Common.DbProviderFactory dpf
        {
            get { return DbProviderFactories.GetFactory(Provider); }
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


        //insercion de lemas en la tabla prueba, para cambiar la insercion hay que cambiar 
        //a la forma de la tabla, campos a insertar y variables, tambien hacer 
        //los determinados querys para las nuevas tablas, realizar un nuevo query 
        //para las nuevas tablas y modificar este codigo, ya que este codigo trabaja sobre un determinado query.
        public int InsertLema(string titulo, string descripcion)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramTitulo = dpf.CreateParameter();
            paramTitulo.Value = titulo;
            paramTitulo.ParameterName = "titulo";
            parametros.Add(paramTitulo);

            DbParameter paramDesc = dpf.CreateParameter();
            paramDesc.Value = descripcion;
            paramDesc.ParameterName = "descripcion";
            parametros.Add(paramDesc);

            return ejecutaNonQuery("AltaLema", parametros);
        }

        public int RELACION_LP(string titulo, string descripcion, int ID_PERIODO)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramTitulo = dpf.CreateParameter();
            paramTitulo.Value = titulo;
            paramTitulo.ParameterName = "titulo";
            parametros.Add(paramTitulo);

            DbParameter paramDesc = dpf.CreateParameter();
            paramDesc.Value = descripcion;
            paramDesc.ParameterName = "descripcion";
            parametros.Add(paramDesc);

            DbParameter paramIDP = dpf.CreateParameter();
            paramIDP.Value = ID_PERIODO;
            System.Console.WriteLine("Valor " + paramIDP.Value);
            paramIDP.ParameterName = "ID_PERIODO";
            parametros.Add(paramIDP);

            return ejecutaNonQuery("RELACION_LP", parametros);
        }
        
        

        public List<LemasPCEPI> select_All_Lemas()
        {
            List<LemasPCEPI> LstLemas = new List<LemasPCEPI>();

            string StoredProcedure = "ObtenerLemas";
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
                            LstLemas.Add(new LemasPCEPI((int)dr["ID_Lema"], (string)dr["titulo"], (string)dr["descripcion"]));
                        }

                    }
                }
            }
            return LstLemas;
        }
    }
}