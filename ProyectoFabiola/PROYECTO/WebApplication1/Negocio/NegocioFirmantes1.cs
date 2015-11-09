using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Comun;
using Datos;


namespace Negocio
{
    class NegocioFirmantes1
    {

         public NegocioFirmantes1()
        { }

        //insertando Periodos
         public int AltaFirmante1(int ID_PLANTEL, int ID_AREA, string RFC_PEC, string RFC_CONSEJERO1, string RFC_CONSEJERO2,
              string RFC_CONSEJERO3, string RFC_CONSEJERO4, string RFC_CONSEJERO5, string RFC_CONSEJERO6, string SIGLAS, DateTime FECHA_OFICIO, int ID_PERIODO)
        {
            DatoAltaFirmante1 DatCam = new DatoAltaFirmante1();
            return DatCam.InsertFirmante1(ID_PLANTEL, ID_AREA, RFC_PEC, RFC_CONSEJERO1, RFC_CONSEJERO2,
             RFC_CONSEJERO3, RFC_CONSEJERO4, RFC_CONSEJERO5, RFC_CONSEJERO6, SIGLAS, FECHA_OFICIO, ID_PERIODO);
        }

        //obtener todos los lemas 
         public List<Firmantes1> ObtenerCampos()
        {
            DatoAltaFirmante1 DatCam = new DatoAltaFirmante1();
            return DatCam.select_All_Firmantes1();
        }
   
    }
}
