﻿using System;
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
    public class DBHelper
    {
        public DBHelper()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static DataSet ExecuteDataSet(string sqlSpName, SqlParameter[] dbParams)
        {
            DataSet ds = null;
            //try
            //{
                ds = new DataSet();
                SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
                SqlCommand cmd = new SqlCommand(sqlSpName, conn);
				cmd.CommandTimeout = 600;
                
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                if (dbParams != null)
                {
                    foreach (SqlParameter dbParam in dbParams)
                    {
                        da.SelectCommand.Parameters.Add(dbParam);
                    }
                }
                da.Fill(ds);
            //}
            //catch (Exception)
            //{
            //    throw;
            //}
            return ds;
        }

        public static bool ExecuteXml(string sqlSpName, SqlParameter[] dbParams, System.Xml.XmlDocument dXml)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                {
                    cmd.Parameters.Add(dbParam);
                }
            }
            conn.Open();
            bool bReturn;
            try
            {
                //dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                using (SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    if (dr.Read())
                    {
                        System.Data.SqlTypes.SqlXml oXml = dr.GetSqlXml(dr.GetOrdinal("Xml"));
                        dXml.LoadXml(oXml.Value);
                        bReturn = true;
                    }
                    else
                    {
                        bReturn = false;
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
            return bReturn;
        }
        public static SqlDataReader ExecuteDataReader(string sqlSpName, SqlParameter[] dbParams)
        {
            SqlDataReader dr;

            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                {
                    cmd.Parameters.Add(dbParam);
                }
            }
            conn.Open();

            try
            {
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception)
            {
                throw;
            }
            return dr;
        }

        public static void ExecuteNonQuery(string sqlSpName, SqlParameter[] dbParams)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                {
                    cmd.Parameters.Add(dbParam);
                }
            }

            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (null != conn)
                    conn.Close();

            }
        }

        public static object ExecuteScalar(string sqlSpName, SqlParameter[] dbParams)
        {
            object retVal = null;
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                {
                    cmd.Parameters.Add(dbParam);
                }
            }

            conn.Open();

            try
            {
                retVal = cmd.ExecuteScalar();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (null != conn)
                    conn.Close();
            }

            return retVal;
        }

        public static DataSet ListarProfesores(ProfesorProyecto profesor, MateriaProyecto materia) 
        {
            DataSet ds = new DataSet();

            DataTable dtMaterias = new DataTable();
            DataTable dtProfesores = new DataTable();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
                SqlConnection connM = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
                SqlDataAdapter adaptador;
                

                conn.Open();
                connM.Open();

                SqlCommand sqlcomando = new SqlCommand();
                SqlCommand sqlcomandoMateria = new SqlCommand();
                sqlcomando.Connection = conn;
                
                sqlcomando.CommandType = CommandType.StoredProcedure;
                sqlcomando.CommandText = "SP_OBTENER_INTEGRANTE";

                sqlcomandoMateria.Connection = connM;
                sqlcomandoMateria.CommandType = CommandType.StoredProcedure;
                sqlcomandoMateria.CommandText = "SP_FILTRAR_MATERIA";



                SqlParameter parID_PLANTEL = new SqlParameter("@ID_PLANTEL", profesor.ID_PLANTEL);
                sqlcomando.Parameters.Add(parID_PLANTEL);


                SqlParameter parID_AREA = new SqlParameter("@ID_AREA", materia.AREA);
                sqlcomandoMateria.Parameters.Add(parID_AREA);

                adaptador = new SqlDataAdapter(sqlcomando);
                adaptador.Fill(dtProfesores);
                //dtProfesores.Tables[0].TableName = "TabProfesores";
                adaptador = new SqlDataAdapter(sqlcomandoMateria);
                adaptador.Fill(dtMaterias);

                ds.Tables.Add(dtProfesores);
                ds.Tables.Add(dtMaterias);
               
            }
            catch (Exception ex )
            {

                throw ex;
                
            }

           return ds;

        }

        public static DataSet ListarProfesoresActualizar(ProfesorProyecto profesor, MateriaProyecto materia, Proyecto proyecto)
        {
            DataSet ds = new DataSet();

            DataTable dtMaterias = new DataTable();
            DataTable dtProfesores = new DataTable();
            try
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
                SqlConnection conn2 = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
                SqlDataAdapter adaptador;

                conn1.Open();
                conn2.Open();

                SqlCommand sqlcomando = new SqlCommand();
                SqlCommand sqlcomandoMateria = new SqlCommand();
                sqlcomando.Connection = conn1;

                sqlcomando.CommandType = CommandType.StoredProcedure;
                sqlcomando.CommandText = "SP_OBTENER_INTEGRANTE_ACTUALIZAR";

                sqlcomandoMateria.Connection = conn2;
                sqlcomandoMateria.CommandType = CommandType.StoredProcedure;
                sqlcomandoMateria.CommandText = "SP_FILTRAR_MATERIA";


                SqlParameter parID_PLANTEL = new SqlParameter("@ID_PLANTEL", profesor.ID_PLANTEL);
                sqlcomando.Parameters.Add(parID_PLANTEL);

                SqlParameter parID_PROYECTO = new SqlParameter("@grupo", proyecto.Grupo);
                sqlcomando.Parameters.Add(parID_PROYECTO);

                SqlParameter parID_AREA = new SqlParameter("@ID_AREA", materia.AREA);
                sqlcomandoMateria.Parameters.Add(parID_AREA);
     

                adaptador = new SqlDataAdapter(sqlcomando);
                adaptador.Fill(dtProfesores);
                //dtProfesores.Tables[0].TableName = "TabProfesores";
                adaptador = new SqlDataAdapter(sqlcomandoMateria);
                adaptador.Fill(dtMaterias);

                ds.Tables.Add(dtProfesores);
                ds.Tables.Add(dtMaterias);

               

            }
            catch (SqlException ex)
            {
                throw ex; 
            }
            catch (Exception ex)
            {

                throw ex;

            }

            return ds;

        }


        public static object ExecuteScalar(string sqlSpName, SqlParameter[] dbParams,SqlTransaction trx,SqlConnection conn)
        {
            object retVal = null;
            //SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn, trx);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                {
                    cmd.Parameters.Add(dbParam);
                }
            }

           // cn.Open();

            try
            {
                retVal = cmd.ExecuteScalar();
            }
            catch (Exception)
            {
                throw;
            }
            //finally
            //{
            //    if (null != cn)
            //        cn.Close();
            //}

            return retVal;
        }

        public static SqlParameter MakeParam(string paramName, SqlDbType dbType, int size, object objValue)
        {
            SqlParameter param;

            if (size > 0)
                param = new SqlParameter(paramName, dbType, size);
            else
                param = new SqlParameter(paramName, dbType);

            param.Value = objValue;

            return param;
        }

        public static SqlParameter MakeParamOutput(string paramName, SqlDbType dbType, int size)
        {
            SqlParameter param;

            if (size > 0)
                param = new SqlParameter(paramName, dbType, size);
            else
                param = new SqlParameter(paramName, dbType);

            param.Direction = ParameterDirection.Output;

            return param;
        }

        public static int ExecuteNonQueryOutput(string sqlSpName, SqlParameter[] dbParams, string paramName, SqlDbType dbType, int size)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("connectionString"));
            SqlCommand cmd = new SqlCommand(sqlSpName, conn);
            cmd.CommandTimeout = Convert.ToInt16(ConfigurationManager.AppSettings.Get("connectionCommandTimeout"));
            cmd.CommandType = CommandType.StoredProcedure;

            if (dbParams != null)
            {
                foreach (SqlParameter dbParam in dbParams)
                    cmd.Parameters.Add(dbParam);
            }
            SqlParameter OutParam = MakeParamOutput(paramName, dbType, size);
            cmd.Parameters.Add(OutParam);

            conn.Open();

            try
            {
                cmd.ExecuteNonQuery();

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (null != conn)
                    conn.Close();

            }
            if (OutParam.Value == null) return 0;
            else return System.Convert.ToInt16(OutParam.Value);
        }

        #region Example
        //public static DataSet Get(CGasto gasto)
        //{
        //    SqlParameter[] dbParams = new SqlParameter[]
        //        {
        //            DBHelper.MakeParam("@Id", SqlDbType.Int, 0, gasto.Id),
        //        };
        //    return DBHelper.ExecuteDataSet("__CListGasto_Get", dbParams);

        //} 
        #endregion

    }
}
