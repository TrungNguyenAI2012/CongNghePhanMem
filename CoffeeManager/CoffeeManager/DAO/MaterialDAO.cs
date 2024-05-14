using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class MaterialDAO
    {
        private static MaterialDAO instance;

        public static MaterialDAO Instance
        {
            get { if (instance == null) instance = new MaterialDAO(); return MaterialDAO.instance; }
            private set { MaterialDAO.instance = value; }
        }

        private MaterialDAO() { }

        public List<Material> LayDanhSachNguyenLieu()
        {
            List<Material> Materials = new List<Material>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblNguyenLieu");

            foreach (DataRow item in data.Rows)
            {
                Material Material = new Material(item);
                Materials.Add(Material);
            }

            return Materials;
        }

        public Material LayNguyenLieuTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblNguyenLieu WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Material(item);
            }

            return null;
        }

        public void ThemNguyenLieu(string ten, int soLuong, string dvt)
        {
            DataProvider.Instance.ExecuteNonQuery("INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'" + ten + "', " + soLuong + ", N'" + dvt + "')");
        }

        public void XoaNguyenLieu(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblNguyenLieu WHERE ID = " + id);
        }

        public void CapNhapNguyenLieu(int id, string ten, int soLuong, string dvt)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblNguyenLieu SET Ten = N'" + ten + "', SoLuong = " + soLuong + ", DVT = N'" + dvt + "' WHERE ID = " + id);
        }
    }
}
