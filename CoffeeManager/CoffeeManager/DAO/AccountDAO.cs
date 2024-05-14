using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance;

        public static AccountDAO Instance
        {
            get { if (instance == null) instance = new AccountDAO(); return AccountDAO.instance; }
            private set { AccountDAO.instance = value; }
        }

        private AccountDAO() { }

        public bool DangNhap(string userName, string passWord)
        {
            string query = "SELECT * FROM tblTaiKhoan WHERE TenTK = '" + userName + "' AND MatKhau = '" + passWord + "'";

            DataTable result = DataProvider.Instance.ExecuteQuery(query);

            return result.Rows.Count > 0;
        }

        public Account LayTaiKhoanTuTenTaiKhoan(string tenTK)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblTaiKhoan WHERE TenTK = '" + tenTK + "'");

            foreach (DataRow item in data.Rows)
            {
                return new Account(item);
            }

            return null;
        }
    }
}
