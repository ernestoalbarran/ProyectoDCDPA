using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Comun
{
    public class Firmante1
    {

        public Firmante1()
        {        }

        private int _ID_FIRMANTE1;
        public int ID_FIRMANTE1
        {
            get { return _ID_FIRMANTE1; }
            set { _ID_FIRMANTE1 = value; }
        }  

        private string _RFC_PEC;
        public string RFC_PEC
        {
            get { return _RFC_PEC;}
            set { _RFC_PEC=value;}
        }

         private string _RFC_CONSEJERO1;
        public string RFC_CONSEJERO1
        {
            get { return _RFC_CONSEJERO1;}
            set { _RFC_CONSEJERO1=value;}
        }
          
          private string _RFC_CONSEJERO2;
        public string RFC_CONSEJERO2
        {
            get { return _RFC_CONSEJERO2;}
            set { _RFC_CONSEJERO2=value;}
        }

          private string _RFC_CONSEJERO3;
        public string RFC_CONSEJERO3
        {
            get { return _RFC_CONSEJERO3;}
            set { _RFC_CONSEJERO3=value;}
        }

          private string _RFC_CONSEJERO4;
        public string RFC_CONSEJERO4
        {
            get { return _RFC_CONSEJERO4;}
            set { _RFC_CONSEJERO4=value;}
        }

          private string _RFC_CONSEJERO5;
        public string RFC_CONSEJERO5
        {
            get { return _RFC_CONSEJERO5;}
            set { _RFC_CONSEJERO5=value;}
        }

          private string _RFC_CONSEJERO6;
        public string RFC_CONSEJERO6
        {
            get { return _RFC_CONSEJERO6;}
            set { _RFC_CONSEJERO6=value;}
        }

          private string _SIGLAS;
        public string SIGLAS
        {
            get { return _SIGLAS;}
            set { _SIGLAS=value;}
        }

         private DateTime _FECHA_OFICIO;
        public DateTime FECHA_OFICIO
        {
            get { return _FECHA_OFICIO;}
            set { _FECHA_OFICIO=value;}
        }

        

        public Firmante1(int ID_FIRMANTE1, string RFC_PEC,string RFC_CONSEJERO1,string RFC_CONSEJERO2,string RFC_CONSEJERO3,string RFC_CONSEJERO4,string RFC_CONSEJERO5,string RFC_CONSEJERO6,string SIGLAS,DateTime FECHA_OFICIO)
        {
            this.ID_FIRMANTE1 = ID_FIRMANTE1;
            this.RFC_PEC=RFC_PEC;
            this.RFC_CONSEJERO1=RFC_CONSEJERO1;
            this.RFC_CONSEJERO2=RFC_CONSEJERO2;
            this.RFC_CONSEJERO3=RFC_CONSEJERO3;
            this.RFC_CONSEJERO4=RFC_CONSEJERO4;
            this.RFC_CONSEJERO5=RFC_CONSEJERO5;
            this.RFC_CONSEJERO6=RFC_CONSEJERO6;
            this.SIGLAS=SIGLAS;
            this.FECHA_OFICIO=FECHA_OFICIO;

        }

    }
}
