using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    class Activos
    {
          public Activos()
        {        }

        private String _periodoletra;
        public String periodoletra
        {
            get { return _periodoletra; }
            set { _periodoletra = value; }
        }

        private String _activo;
        public String activo
        {
            get { return _activo; }
            set { _activo = value; }
        }


        public Activos(String periodoletra, String activo)
        {
            this.periodoletra = periodoletra;
            this.activo =activo;
           

        }

    }
}
