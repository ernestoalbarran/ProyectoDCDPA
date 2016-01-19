using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    public class Plantel
    {

        public Plantel()
        {        }

        private int _ID_PLANTEL;

        public int ID_PLANTEL
        {
            get { return _ID_PLANTEL; }
            set { _ID_PLANTEL = value; }
        }
        private string _NOMBRE;

        public string NOMBRE
        {
            get { return _NOMBRE; }
            set { _NOMBRE= value; }
        }
        private string _CVE_DEPENDENCIA;

        public string CVE_DEPENDENCIA
        {
            get { return _CVE_DEPENDENCIA; }
            set { _CVE_DEPENDENCIA = value; }
        }


        public Plantel(int ID_PLANTEL, string NOMBRE, string CVE_DEPENDENCIA)
        {
            this.ID_PLANTEL = ID_PLANTEL;
            this.NOMBRE= NOMBRE;
            this.CVE_DEPENDENCIA = CVE_DEPENDENCIA;
        }


    }
}
