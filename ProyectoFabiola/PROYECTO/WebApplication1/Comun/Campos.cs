﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DGCCH.Comun
{
    public class Campos
    {


        public Campos()
        {        }
        


        private int _IDCampo;

        public int IDCampo
        {
            get { return _IDCampo; }
            set { _IDCampo = value; }
        }

        //private int _Id_Proyecto;

        //public int Id_Proyecto
        //{
        //    get { return _Id_Proyecto; }
        //    set { _Id_Proyecto = value; }
        //}

        private string _Des_Larga;

        public string Des_Larga
        {
            get { return _Des_Larga; }
            set { _Des_Larga = value; }
        }
        private string _Des_Corta;

        public string Des_Corta
        {
            get { return _Des_Corta; }
            set { _Des_Corta = value; }
        }

       //public Campos(int IDCampo, string Des_Corta, string Des_Larga)

        //public Campos(int Id_Proyecto)
        //{
        //    this.Id_Proyecto = Id_Proyecto;
        //}
 
        public Campos( int IDCampo, string Des_Corta, string Des_Larga)
        {
            //this.Id_Proyecto = Id_Proyecto;
            this.IDCampo = IDCampo;
            this.Des_Corta = Des_Corta;
            this.Des_Larga = Des_Larga;
        }



    }
}