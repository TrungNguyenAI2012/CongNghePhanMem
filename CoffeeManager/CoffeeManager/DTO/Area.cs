using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Area
    {
        private int iD;
        private string ten;
        private int gia;

        public int ID { get => iD; set => iD = value; }
        public string Ten { get => ten; set => ten = value; }
        public int Gia { get => gia; set => gia = value; }

        public Area(int iD, string ten, int gia)
        {
            this.iD = iD;
            this.Ten = ten;
            this.gia = gia;
        }

        public Area(DataRow row)
        {
            this.iD = (int)row["iD"];
            this.Ten = row["ten"].ToString();
            this.gia = (int)row["gia"];
        }
    }
}
