using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    class StaffDAO
    {
        private static StaffDAO instance;

        public static StaffDAO Instance
        {
            get { if (instance == null) instance = new StaffDAO(); return StaffDAO.instance; }
            private set { StaffDAO.instance = value; }
        }

        private StaffDAO() { }

        public List<Staff> TaiDanhSachNhanVien()
        {
            List<Staff> Staffs = new List<Staff>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblNhanVien");

            foreach (DataRow item in data.Rows)
            {
                Staff Staff = new Staff(item);
                Staffs.Add(Staff);
            }

            return Staffs;
        }

        public Staff LayNhanVienTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblNhanVien WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Staff(item);
            }

            return null;
        }

        public void ThemNhanVien(string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int luongCB)
        {
            string query = "INSERT INTO tblNhanVien (TaiKhoan, Ten, CMND, GioiTinh, DiaChi, SoDT, LuongCB) " +
                "VALUES (N'" + taiKhoan + "', N'" + ten + "', N'" + cMND + "', " + gioiTinh + ", N'" + diaChi + "', N'" + sDT + "', " + luongCB + ")";

            DataProvider.Instance.ExecuteNonQuery(query);
        }

        public void XoaNhanVien(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblNhanVien WHERE ID = " + id);
        }

        public void CapNhapNhanVien(int id, string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int luongCB)
        {
            string query = "UPDATE tblNhanVien SET TaiKhoan = '" + taiKhoan + "', Ten = N'" + ten + "', CMND = '" + cMND + "', GioiTinh = " + gioiTinh + ", DiaChi = N'" + diaChi + "', SoDT = '" + sDT + "', LuongCB = " + luongCB + " WHERE ID = " + id;
            DataProvider.Instance.ExecuteNonQuery(query);
        }
    }
}
