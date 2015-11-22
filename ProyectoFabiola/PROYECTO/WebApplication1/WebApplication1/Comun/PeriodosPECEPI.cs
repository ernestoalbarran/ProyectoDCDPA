using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PCEPI.Comun
{
    public class PeriodosPECEPI
    {
        public PeriodosPECEPI()
        { }

        private int _IDPeriodo;

        public int IDPeriodo
        {
            get { return _IDPeriodo; }
            set { _IDPeriodo = value; }
        }
        private string _Nombre_periodo;

        public string Nombre_periodo
        {
            get { return _Nombre_periodo; }
            set { _Nombre_periodo = value; }
        }
        private DateTime _FECHA_INICIO;

        public DateTime FECHA_INICIO
        {
            get { return _FECHA_INICIO; }
            set { _FECHA_INICIO = value; }
        }
        private DateTime _FECHA_TERMINO;
        
        public DateTime FECHA_TERMINO
        {
            get { return _FECHA_TERMINO; }
            set { _FECHA_TERMINO = value; }
        }

        public PeriodosPECEPI(int IDPeriodo, string Nombre_periodo, DateTime FECHA_INICIO, DateTime FECHA_TERMINO)
        {
            this.IDPeriodo = IDPeriodo;
            this.Nombre_periodo = Nombre_periodo;
            this.FECHA_INICIO = FECHA_INICIO;
            this.FECHA_TERMINO = FECHA_TERMINO;
 
        }
    }
}