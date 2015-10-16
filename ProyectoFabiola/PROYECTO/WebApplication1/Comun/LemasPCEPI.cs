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


        private int _ID_Lema;

        public int ID_Lema
        {
            get { return _ID_Lema; }
            set { _ID_Lema = value; }
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

      
        public LemasPCEPI(int ID_Lema, string Titulo, string Descripcion)
        {
            this.ID_Lema = ID_Lema;
            this.Titulo = Titulo;
            this.Descripcion = Descripcion;
        }
    }
}