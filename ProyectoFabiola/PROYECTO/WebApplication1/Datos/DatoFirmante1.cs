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
    public class DatoFirmante1
    {

         public DatoFirmante1()
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

        //public int InsertFirmante1(int ID_PLANTEL)
        //{
        //    List<DbParameter> parametros = new List<DbParameter>();

        //    DbParameter paramID_PLANTEL = dpf.CreateParameter();
        //    paramID_PLANTEL.Value = 1;
        //    paramID_PLANTEL.ParameterName = "ID_PLANTEL";
        //    parametros.Add(paramID_PLANTEL);

        //    return ejecutaNonQuery("AltaFirmante1", parametros);

        //}

        public int InsertFirmante1(int ID_PLANTEL, int ID_AREA, string RFC_PEC, string RFC_CONSEJERO1, string RFC_CONSEJERO2, string RFC_CONSEJERO3, string RFC_CONSEJERO4, string RFC_CONSEJERO5,
string RFC_CONSEJERO6, string SIGLAS, DateTime FECHA_OFICIO, int ID_PERIODO)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramID_PLANTEL = dpf.CreateParameter();
            paramID_PLANTEL.Value = ID_PLANTEL;
            paramID_PLANTEL.ParameterName = "ID_PLANTEL";
            parametros.Add(paramID_PLANTEL);

            DbParameter paramID_AREA = dpf.CreateParameter();
            paramID_AREA.Value = ID_AREA;
            paramID_AREA.ParameterName = "ID_AREA";
            parametros.Add(paramID_AREA);

            DbParameter paramRFC_PEC = dpf.CreateParameter();
            paramRFC_PEC.Value = RFC_PEC;
            paramRFC_PEC.ParameterName = "RFC_PEC";
            parametros.Add(paramRFC_PEC);

            DbParameter paramRFC_CONSEJERO1 = dpf.CreateParameter();
            paramRFC_CONSEJERO1.Value = RFC_CONSEJERO1;
            paramRFC_CONSEJERO1.ParameterName = "RFC_CONSEJERO1";
            parametros.Add(paramRFC_CONSEJERO1);

            DbParameter paramRFC_CONSEJERO2= dpf.CreateParameter();
            paramRFC_CONSEJERO2.Value = RFC_CONSEJERO2;
            paramRFC_CONSEJERO2.ParameterName = "RFC_CONSEJERO2";
            parametros.Add(paramRFC_CONSEJERO2);

            DbParameter paramRFC_CONSEJERO3 = dpf.CreateParameter();
            paramRFC_CONSEJERO3.Value = RFC_CONSEJERO3;
            paramRFC_CONSEJERO3.ParameterName = "RFC_CONSEJERO3";
            parametros.Add(paramRFC_CONSEJERO3);

            DbParameter paramRFC_CONSEJERO4 = dpf.CreateParameter();
            paramRFC_CONSEJERO4.Value = RFC_CONSEJERO4;
            paramRFC_CONSEJERO4.ParameterName = "RFC_CONSEJERO4";
            parametros.Add(paramRFC_CONSEJERO4);

            DbParameter paramRFC_CONSEJERO5 = dpf.CreateParameter();
            paramRFC_CONSEJERO5.Value = RFC_CONSEJERO5;
            paramRFC_CONSEJERO5.ParameterName = "RFC_CONSEJERO5";
            parametros.Add(paramRFC_CONSEJERO5);

            DbParameter paramRFC_CONSEJERO6 = dpf.CreateParameter();
            paramRFC_CONSEJERO6.Value = RFC_CONSEJERO5;
            paramRFC_CONSEJERO6.ParameterName = "RFC_CONSEJERO6";
            parametros.Add(paramRFC_CONSEJERO6);

            DbParameter paramSIGLAS = dpf.CreateParameter();
            paramSIGLAS.Value = SIGLAS;
            paramSIGLAS.ParameterName = "SIGLAS";
            parametros.Add(paramSIGLAS);


            DbParameter paramFECHA_OFICIO = dpf.CreateParameter();
            paramFECHA_OFICIO.Value = FECHA_OFICIO;
            paramFECHA_OFICIO.ParameterName = "FECHA_OFICIO";
            parametros.Add(paramFECHA_OFICIO);


            DbParameter paramID_PERIODO = dpf.CreateParameter();
            paramID_PERIODO.Value = ID_PERIODO;
            paramID_PERIODO.ParameterName = "ID_PERIODO";
            parametros.Add(paramID_PERIODO);



        return ejecutaNonQuery("AltaFirmante1", parametros);
        }

        public List<Firmante1> select_All_Firmante1()
        {
            List<Firmante1> LstFirmante1 = new List<Firmante1>();

            string StoredProcedure = "ObtenerFirmante1";
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
                            LstFirmante1.Add(new Firmante1((int)dr["ID_FIRMANTE1"], (int)dr["ID_PLANTEL"], (int)dr["ID_AREA"], (string)dr["RFC_PEC"], (string)dr["RFC_CONSEJERO1"],
                                (string)dr["RFC_CONSEJERO2"], (string)dr["RFC_CONSEJERO3"], (string)dr["RFC_CONSEJERO4"], (string)dr["RFC_CONSEJERO5"], (string)dr["RFC_CONSEJERO6 "],
                                (string)dr["SIGLAS"], (DateTime)dr["FECHA_OFICIO"], (int)dr["ID_PERIODO"]));
                        }

                    }
                }
            }
            return LstFirmante1;
        }
 



    }
}
