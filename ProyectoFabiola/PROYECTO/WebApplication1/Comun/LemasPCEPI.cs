using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PCEPI.Comun
{
    public class LemasPCEPI
    {
        public LemasPCEPI()
        { }


        private int _IDLemas;

        public int IDLemas
        {
            get { return _IDLemas; }
            set { _IDLemas = value; }
        }
        private string _titulo;

        public string Titulo
        {
            get { return _titulo; }
            set { _titulo = value; }
        }
        private string _descripcion;

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }
      
        public LemasPCEPI(int IDLemas, string Titulo, string Descripcion)
        {
            this.IDLemas = IDLemas;
            this.Titulo = Titulo;
            this.Descripcion = Descripcion;
        }
    }
}