using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using PCEPI.Comun;
using PCEPI.Datos;

namespace PCEPI.Negocio
{
    public class NegocioPeriodo
    {
        public NegocioPeriodo()
        { }

        //insertando Periodos
        public int AltaPeriodo(string Nombre_periodo, DateTime FECHA_INICIO , DateTime FECHA_TERMINO)
        {
            DatoPeriodo DatPer = new DatoPeriodo();
            return DatPer.InsertPeriodo(Nombre_periodo, FECHA_INICIO, FECHA_TERMINO);
        }

        //obtener todos los lemas 
        public List<PeriodosPECEPI> ObtenerPeriodos()
        {
            DatoPeriodo DatPer = new DatoPeriodo();
            return DatPer.select_All_Periodo();
        }
    }
}