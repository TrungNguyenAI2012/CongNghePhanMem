using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace CoffeeManager.DAO
{
    public class TableDAO
    {
        private static TableDAO instance;

        public static TableDAO Instance
        {
            get { if (instance == null) instance = new TableDAO(); return TableDAO.instance; }
            private set { TableDAO.instance = value; }
        }

        private TableDAO() { }

        public void ChuyenBan(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblBan SET coNguoi = 0 WHERE ID = " + id);
        }

        public List<Table> TaiDanhSachBan()
        {
            List<Table> tables = new List<Table>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblBan");

            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tables.Add(table);
            }

            return tables;
        }

        public Table LayBanTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblBan WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Table(item);
            }

            return null;
        }

        public void ThemBan(int IDKV, string ten, int soNguoi)
        {
            DataProvider.Instance.ExecuteNonQuery("INSERT INTO tblBan (IDKV, Ten, SoNguoi) VALUES (" + IDKV + ", N'" + ten + "', " + soNguoi + ")");
        }

        public void XoaBan(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblBan WHERE ID = " + id);
        }

        public void CapNhapBan(int id, int IDKV, string ten, int soNguoi)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblBan SET IDKV = " + IDKV + ", Ten = N'" + ten + "', SoNguoi = " + soNguoi + " WHERE ID = " + id);
        }
    }
}
