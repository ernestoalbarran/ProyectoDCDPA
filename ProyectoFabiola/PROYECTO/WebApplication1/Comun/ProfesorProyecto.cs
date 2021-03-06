﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCEPI.Comun
{
    public class ProfesorProyecto
    {
        private String _RFC;

        public String RFC
        {
            get { return _RFC; }
            set { _RFC = value; }
        }
        private String _NOMBRE;

        public String NOMBRE
        {
            get { return _NOMBRE; }
            set { _NOMBRE = value; }
        }
        private String _SEXO;

        public String SEXO
        {
            get { return _SEXO; }
            set { _SEXO = value; }
        }
        private String _ID_PLANTEL;

        public String ID_PLANTEL
        {
            get { return _ID_PLANTEL; }
            set { _ID_PLANTEL = value; }
        }
        private String _CURP;

        public String CURP
        {
            get { return _CURP; }
            set { _CURP = value; }
        }
        private String _ID_CATEGORIA;

        public String ID_CATEGORIA
        {
            get { return _ID_CATEGORIA; }
            set { _ID_CATEGORIA = value; }
        }

        private int _Opcion;

        public int Opcion
        {
            get { return _Opcion; }
            set { _Opcion = value; }
        }

        private int _Area;

        public int Area
        {
            get { return _Area; }
            set { _Area = value; }
        }

        public ProfesorProyecto() { }



        public ProfesorProyecto(string  NOMBRE, string RFC, int Area, int Opcion ) 
        {
            this.NOMBRE = NOMBRE;
            this.RFC = RFC;
            this.Area = Area;
            this.Opcion = Opcion;
        }

    }
}
