using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Guest
    {
        private string taiKhoan;
        private int iD;
        private string ten;
        private string cMND;
        private bool gioiTinh;
        private string diaChi;
        private string sDT;
        private int diem;

        public string TaiKhoan { get => taiKhoan; set => taiKhoan = value; }
        public int ID { get => iD; set => iD = value; }
        public string Ten { get => ten; set => ten = value; }
        public string CMND { get => cMND; set => cMND = value; }
        public bool GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string SDT { get => sDT; set => sDT = value; }
        public int Diem { get => diem; set => diem = value; }

        public Guest(string taiKhoan, int iD, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int diem)
        {
            this.taiKhoan = taiKhoan;
            this.iD = iD;
            this.ten = ten;
            this.cMND = cMND;
            this.gioiTinh = gioiTinh;
            this.diaChi = diaChi;
            this.sDT = sDT;
            this.diem = diem;
        }

        public Guest(DataRow row)
        {
            this.taiKhoan = row["TaiKhoan"].ToString();
            this.iD = (int)row["ID"];
            this.ten = row["Ten"].ToString();
            this.cMND = row["CMND"].ToString();
            this.gioiTinh = (bool)row["GioiTinh"];
            this.diaChi = row["DiaChi"].ToString();
            this.sDT = row["SoDT"].ToString();
            this.diem = (int)row["Diem"];
        }
    }
}
