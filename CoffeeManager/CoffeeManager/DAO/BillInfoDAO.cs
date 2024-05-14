using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class BillInfoDAO
    {
        private static BillInfoDAO instance;

        public static BillInfoDAO Instance
        {
            get { if (instance == null) instance = new BillInfoDAO(); return BillInfoDAO.instance; }
            private set { BillInfoDAO.instance = value; }
        }

        private BillInfoDAO() { }

        public List<BillInfo> LayDanhSachCTHD(int iD)
        {
            List<BillInfo> listBillInfo = new List<BillInfo>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblChiTietHoaDon WHERE IDHD = " + iD);

            foreach (DataRow item in data.Rows)
            {
                BillInfo info = new BillInfo(item);
                listBillInfo.Add(info);
            }

            return listBillInfo;
        }

        public void ThemChiTietHoaDon(int iDHD, int iDMon, int soLuong)
        {
            DataProvider.Instance.ExecuteNonQuery("EXEC procThemChiTietHoaDon @IDHD , @IDMon , @SoLuong", new object[] { iDHD, iDMon, soLuong });
        }
    }
}
