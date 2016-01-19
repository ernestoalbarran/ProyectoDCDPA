using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Comun;
using Datos;
using System.Data;

namespace Negocio
{
    public class NegocioFirmante1
    {

        public NegocioFirmante1()
        { }

        //insertando Firmantes
        public int AltaFirmante1( string RFC_PEC, string RFC_CONSEJERO1, string RFC_CONSEJERO2, string RFC_CONSEJERO3, string RFC_CONSEJERO4, string RFC_CONSEJERO5,
                                    string RFC_CONSEJERO6, string SIGLAS, DateTime FECHA_OFICIO)
        {
            DatoFirmante1 Datfirm = new DatoFirmante1();
            return Datfirm.InsertFirmante1( RFC_PEC, RFC_CONSEJERO1, RFC_CONSEJERO2,  RFC_CONSEJERO3, RFC_CONSEJERO4, RFC_CONSEJERO5,
 RFC_CONSEJERO6, SIGLAS,  FECHA_OFICIO);
        }

        //public int AltaFirmante1(int ID_PLANTEL)
        //{
        //    return ID_PLANTEL;
        //}

        //obtener todos los Firmantes 

        public int RELACION_FP(string RFC_PEC, string RFC_CONSEJERO1, string RFC_CONSEJERO2, string RFC_CONSEJERO3, string RFC_CONSEJERO4, string RFC_CONSEJERO5,
                                    string RFC_CONSEJERO6, string SIGLAS, DateTime FECHA_OFICIO,int ID_PLANTEL, int ID_AREA, int ID_PERIODO)
        {
            DatoFirmante1 DatoFP = new DatoFirmante1();
            return DatoFP.RELACION_FP(RFC_PEC, RFC_CONSEJERO1, RFC_CONSEJERO2, RFC_CONSEJERO3, RFC_CONSEJERO4, RFC_CONSEJERO5,
                RFC_CONSEJERO6, SIGLAS, FECHA_OFICIO, ID_PLANTEL, ID_AREA, ID_PERIODO);
        }



        public List<Firmante1> ObtenerFirmante1()
        {
            DatoFirmante1 DatFirm = new DatoFirmante1();
            return DatFirm.select_All_Firmante1();
        }

        public DataTable RecuperaDTFirmantes(string idArea, string idPlantel)
        {
            DatoFirmante1 DatFirm = new DatoFirmante1();
            return DatFirm.RecuperaDTFirmantes(idArea, idPlantel);
        }
        
   
    }
}
