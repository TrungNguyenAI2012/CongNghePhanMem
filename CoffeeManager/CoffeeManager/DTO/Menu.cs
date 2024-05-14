using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Menu
    {
        private string ten;
        private int gia;
        private int soLuong;
        private int tongTien;

        public string Ten { get => ten; set => ten = value; }
        public int Gia { get => gia; set => gia = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
        public int TongTien { get => tongTien; set => tongTien = value; }

        public Menu(string ten, int gia, int soLuong, int tongTien)
        {
            this.ten = ten;
            this.gia = gia;
            this.soLuong = soLuong;
            this.tongTien = tongTien;
        }

        public Menu(DataRow row)
        {
            this.ten = row["ten"].ToString();
            this.gia = (int) row["gia"];
            this.soLuong = (int) row["soLuong"];
            this.tongTien = (int) row["tongTien"];
        }
    }
}
