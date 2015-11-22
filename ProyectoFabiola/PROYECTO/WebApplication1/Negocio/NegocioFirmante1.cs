using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Comun;
using Datos;

namespace Negocio
{
    public class NegocioFirmante1
    {

        public NegocioFirmante1()
        { }

        //insertando Firmantes
        public int AltaFirmante1(int ID_PLANTEL, int ID_AREA, string RFC_PEC, string RFC_CONSEJERO1, string RFC_CONSEJERO2, string RFC_CONSEJERO3, string RFC_CONSEJERO4, string RFC_CONSEJERO5,
string RFC_CONSEJERO6, string SIGLAS, DateTime FECHA_OFICIO, int ID_PERIODO)
        {
            DatoFirmante1 Datfirm = new DatoFirmante1();
            return Datfirm.InsertFirmante1(ID_PLANTEL,ID_AREA, RFC_PEC, RFC_CONSEJERO1, RFC_CONSEJERO2,  RFC_CONSEJERO3, RFC_CONSEJERO4, RFC_CONSEJERO5,
 RFC_CONSEJERO6, SIGLAS,  FECHA_OFICIO,  ID_PERIODO);
        }

        //public int AltaFirmante1(int ID_PLANTEL)
        //{
        //    return ID_PLANTEL;
        //}

        //obtener todos los Firmantes 
        public List<Firmante1> ObtenerFirmante1()
        {
            DatoFirmante1 DatFirm = new DatoFirmante1();
            return DatFirm.select_All_Firmante1();
        }
   
    }
}
