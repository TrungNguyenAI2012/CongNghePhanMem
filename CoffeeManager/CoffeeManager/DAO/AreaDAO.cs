using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class AreaDAO
    {
        private static AreaDAO instance;

        public static AreaDAO Instance
        {
            get { if (instance == null) instance = new AreaDAO(); return AreaDAO.instance; }
            private set { AreaDAO.instance = value; }
        }

        private AreaDAO() { }

        public List<Area> LayDanhSachKhuVuc()
        {
            List<Area> Areas = new List<Area>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblKhuVuc");

            foreach (DataRow item in data.Rows)
            {
                Area Area = new Area(item);
                Areas.Add(Area);
            }

            return Areas;
        }

        public Area LayKhuVucTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblKhuVuc WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Area(item);
            }

            return null;
        }

        public void ThemKhuVuc(string ten, int gia)
        {
            DataProvider.Instance.ExecuteNonQuery("INSERT INTO tblKhuVuc (Ten, gia) VALUES (N'" + ten + "', " + gia + ")");
        }

        public void XoaKhuVuc(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblKhuVuc WHERE ID = " + id);
        }

        public void CapNhapKhuVuc(int id, string ten, int gia)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblKhuVuc SET Ten = N'" + ten + "', gia = " + gia + " WHERE ID = " + id);
        }
    }
}
