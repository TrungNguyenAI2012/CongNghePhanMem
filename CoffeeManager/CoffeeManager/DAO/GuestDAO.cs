using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    class GuestDAO
    {
        private static GuestDAO instance;

        public static GuestDAO Instance
        {
            get { if (instance == null) instance = new GuestDAO(); return GuestDAO.instance; }
            private set { GuestDAO.instance = value; }
        }

        private GuestDAO() { }

        public List<Guest> TaiDanhSachKhachHang()
        {
            List<Guest> Guests = new List<Guest>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblKhachHang");

            foreach (DataRow item in data.Rows)
            {
                Guest Guest = new Guest(item);
                Guests.Add(Guest);
            }

            return Guests;
        }

        public Guest LayKhachHangTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblKhachHang WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Guest(item);
            }

            return null;
        }

        public void ThemKhachHang(string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int Diem)
        {
            string query = "INSERT INTO tblKhachHang (TaiKhoan, Ten, CMND, GioiTinh, DiaChi, SoDT, Diem) " +
                "VALUES (N'" + taiKhoan + "', N'" + ten + "', N'" + cMND + "', " + gioiTinh + ", N'" + diaChi + "', N'" + sDT + "', " + Diem + ")";

            DataProvider.Instance.ExecuteNonQuery(query);
        }

        public void XoaKhachHang(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblKhachHang WHERE ID = " + id);
        }

        public void CapNhapKhachHang(int id, string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int Diem)
        {
            string query = "UPDATE tblKhachHang SET TaiKhoan = '" + taiKhoan + "', Ten = N'" + ten + "', CMND = '" + cMND + "', GioiTinh = " + gioiTinh + ", DiaChi = N'" + diaChi + "', SoDT = '" + sDT + "', Diem = " + Diem + " WHERE ID = " + id;
            DataProvider.Instance.ExecuteNonQuery(query);
        }
    }
}
