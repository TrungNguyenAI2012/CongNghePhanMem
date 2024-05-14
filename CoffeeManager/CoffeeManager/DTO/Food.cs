using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Food
    {
        private int iDLM;
        private int iD;
        private string ten;
        private int gia;

        public int IDHD { get => iDLM; set => iDLM = value; }
        public int ID { get => iD; set => iD = value; }
        public string Ten { get => ten; set => ten = value; }
        public int Gia { get => gia; set => gia = value; }

        public Food(int iDLM, int iD, string ten, int gia)
        {
            this.iDLM = iDLM;
            this.iD = iD;
            this.ten = ten;
            this.gia = gia;
        }

        public Food(DataRow row)
        {
            this.iDLM = (int)row["iDLM"];
            this.iD = (int)row["iD"];
            this.ten = row["ten"].ToString();
            this.gia = (int)row["gia"];
        }
    }
}
