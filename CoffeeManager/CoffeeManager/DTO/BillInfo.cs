using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class BillInfo
    {
        private int iDHD;
        private int iD;
        private int soLuong;

        public int IDHD { get => iDHD; set => iDHD = value; }
        public int ID { get => iD; set => iD = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }

        public BillInfo(int iDHD, int iD, int soLuong)
        {
            this.iDHD = iDHD;
            this.iD = iD;
            this.soLuong = soLuong;
        }

        public BillInfo(DataRow row)
        {
            this.iDHD = (int) row["iDHD"];
            this.iD = (int)row["iDMon"];
            this.soLuong = (int)row["soLuong"];
        }
    }
}
