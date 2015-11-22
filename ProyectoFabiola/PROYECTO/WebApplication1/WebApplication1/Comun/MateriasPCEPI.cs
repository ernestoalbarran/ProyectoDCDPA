using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCEPI.Comun
{
    public class Materias
    {
        public Materias()
        { }

        private int _ID_AREA;
        private string _Materia;

public string Materia
{
  get { return _Materia; }
  set { _Materia = value; }
}

        public int ID_AREA
        {
            get { return _ID_AREA; }
            set { _ID_AREA = value; }
        }

        public Materias(int ID_AREA, string Materia)
        {
            this._ID_AREA = ID_AREA;
            this._Materia = Materia;
        }


    }
}
