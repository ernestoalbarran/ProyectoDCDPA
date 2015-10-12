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
        public int AltaPeriodo(string Nombre_periodo, DateTime Fecha_i , DateTime Fecha_f)
        {
            DatoPeriodo DatPer = new DatoPeriodo();
            return DatPer.InsertPeriodo(Nombre_periodo, Fecha_i, Fecha_f);
        }

        //obtener todos los lemas 
        public List<PeriodosPECEPI> ObtenerPeriodos()
        {
            DatoPeriodo DatPer = new DatoPeriodo();
            return DatPer.select_All_Periodo();
        }
    }
}