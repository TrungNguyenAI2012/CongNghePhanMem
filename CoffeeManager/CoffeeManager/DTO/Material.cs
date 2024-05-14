using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Material
    {
        private int iD;
        private string ten;
        private int soLuong;
        private string dVT;

        public int ID { get => iD; set => iD = value; }
        public string Ten { get => ten; set => ten = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
        public string DVT { get => dVT; set => dVT = value; }

        public Material(int iD, string ten, int soLuong, string dVT)
        {
            this.iD = iD;
            this.Ten = ten;
            this.soLuong = soLuong;
            this.dVT = dVT;
        }

        public Material(DataRow row)
        {
            this.iD = (int)row["iD"];
            this.Ten = row["ten"].ToString();
            this.SoLuong = (int)row["soLuong"];
            this.dVT = row["DVT"].ToString();
        }
    }
}
