using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Bill
    {
        private int iD;
        private DateTime? gioVao;
        private DateTime? gioRa;
        private int giamGia;
        private int tongTien;
        private bool thanhToan;
  
        public int ID { get => iD; set => iD = value; }
        public DateTime? GioVao { get => gioVao; set => gioVao = value; }
        public DateTime? GioRa { get => gioRa; set => gioRa = value; }     
        public int GiamGia { get => giamGia; set => giamGia = value; }
        public int TongTien { get => tongTien; set => tongTien = value; }
        public bool ThanhToan { get => thanhToan; set => thanhToan = value; }

        public Bill(int iD, DateTime? gioVao, DateTime? gioRa, int tongTien, bool thanhToan, int giamGia = 0)
        {
            this.iD = iD;
            this.gioVao = gioVao;
            this.gioRa = gioRa;
            this.giamGia = giamGia;
            this.tongTien = tongTien;
            this.thanhToan = thanhToan;
        }

        public Bill(DataRow row)
        {
            this.iD = (int) row["iD"];
            this.gioVao = (DateTime?)row["gioVao"];
            var dateTemp = row["gioRa"];
            if (dateTemp.ToString() != "")
                this.gioRa = (DateTime?)dateTemp;
            this.giamGia = (int)row["giamGia"];
            this.tongTien = (int)row["tongTien"];
            this.thanhToan = (bool)row["thanhToan"];
        }
    }
}
