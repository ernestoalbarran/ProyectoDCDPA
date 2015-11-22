using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using PCEPI.Comun;

namespace PCEPI.Datos
{
    public class DatoPeriodo
    {
        public DatoPeriodo()
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


        //insercion de lemas en la tabla prueba, para cambiar la insercion hay que cambiar 
        //a la forma de la tabla, campos a insertar y variables, tambien hacer 
        //los determinados querys para las nuevas tablas, realizar un nuevo query 
        //para las nuevas tablas y modificar este codigo, ya que este codigo trabaja sobre un determinado query.
        public int InsertPeriodo(string Nombre_periodo, DateTime FECHA_INICIO, DateTime FECHA_TERMINO)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramNombre = dpf.CreateParameter();
            paramNombre.Value = Nombre_periodo;
            paramNombre.ParameterName = "Nombre_periodo";
            parametros.Add(paramNombre);

            DbParameter paramFecha_i = dpf.CreateParameter();
            paramFecha_i.Value = FECHA_INICIO;
            paramFecha_i.ParameterName = "FECHA_INICIO";
            parametros.Add(paramFecha_i);

            DbParameter paramFecha_f = dpf.CreateParameter();
            paramFecha_f.Value = FECHA_TERMINO;
            paramFecha_f.ParameterName = "FECHA_TERMINO";
            parametros.Add(paramFecha_f);

            return ejecutaNonQuery("AltaPeriodo", parametros);
        }

        public List<PeriodosPECEPI> select_All_Periodo()
        {
            List<PeriodosPECEPI> LstPeriodo = new List<PeriodosPECEPI>();

            string StoredProcedure = "ObtenerPeriodos";
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
                            LstPeriodo.Add(new PeriodosPECEPI((int)dr["ID_PERIODO"], (string)dr["NOMBRE_PERIODO"], (DateTime)dr["FECHA_INICIO"], (DateTime)dr["FECHA_TERMINO"]));
                        }

                    }
                }
            }
            return LstPeriodo;
        }
    }

}