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
        private DateTime _Fecha_i;

        public DateTime Fecha_i
        {
            get { return _Fecha_i; }
            set { _Fecha_i = value; }
        }
        private DateTime _Fecha_f;
        
        public DateTime Fecha_f
        {
            get { return _Fecha_f; }
            set { _Fecha_f = value; }
        }

        public PeriodosPECEPI(int IDPeriodo, string Nombre_periodo, DateTime Fecha_i, DateTime Fecha_f)
        {
            this.IDPeriodo = IDPeriodo;
            this.Nombre_periodo = Nombre_periodo;
            this.Fecha_i = Fecha_i;
            this.Fecha_f = Fecha_f;
 
        }
    }
}