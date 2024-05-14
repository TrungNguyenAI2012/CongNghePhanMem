using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class CategoryDAO
    {
        private static CategoryDAO instance;

        public static CategoryDAO Instance
        {
            get { if (instance == null) instance = new CategoryDAO(); return CategoryDAO.instance; }
            private set { CategoryDAO.instance = value; }
        }

        private CategoryDAO() { }

        public List<Category> LayDanhSachDanhMuc()
        {
            List<Category> categories = new List<Category>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblLoaiMon");

            foreach (DataRow item in data.Rows)
            {
                Category category = new Category(item);
                categories.Add(category);
            }

            return categories;
        }

        public string LayTenDanhMucTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblLoaiMon WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Category(item).Ten;
            }

            return null;
        }

        public void ThemDanhMuc(string ten)
        {
            DataProvider.Instance.ExecuteNonQuery("INSERT INTO tblLoaiMon (Ten) VALUES (N'" + ten + "')");
        }

        public void XoaDanhMuc(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblLoaiMon WHERE ID = " + id);
        }

        public void CapNhapDanhMuc(int id, string ten)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblLoaiMon SET Ten = N'" + ten + "' WHERE ID = " + id);
        }
    }
}
