using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class BillDAO
    {
        private static BillDAO instance;

        public static BillDAO Instance
        {
            get { if (instance == null) instance = new BillDAO(); return BillDAO.instance; }
            private set { BillDAO.instance = value; }
        }

        private BillDAO() { }

        public int LayHoaDonChuaThanhToanTheoBan(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblHoaDon WHERE IDBan = " + id + "AND ThanhToan = 0");

            if (data.Rows.Count > 0)
            {
                Bill bill = new Bill(data.Rows[0]);
                return bill.ID;
            }

            return -1;
        }

        public void ThemHoaDon(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("EXEC procThemHoaDon @iDBan", new object[] { id });
        }

        public int LayIDHoaDonLonNhat()
        {
            try
            {
                return (int)DataProvider.Instance.ExecuteScalar("SELECT MAX(ID) FROM tblHoaDon");
            } catch
            {
                return 1;
            }
            
        }
    
        public void ThanhToan(int id, int GiamGia, int tongTien)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblHoaDon SET GioRa = GETDATE(), ThanhToan = 1, GiamGia = " + GiamGia + ", tongTien = " + tongTien + " WHERE ID = " + id);
        }

        public DataTable ThongKeDoanhThu(DateTime GioVao, DateTime GioRa)
        {
            return DataProvider.Instance.ExecuteQuery("SELECT ID AS [Mã], GioVao AS [Giờ vào], GioRa AS [Giờ ra], GiamGia AS [Giảm giá], TongTien AS [Tổng tiền] FROM tblHoaDon WHERE ThanhToan = 1");
            //return DataProvider.Instance.ExecuteQuery("SELECT ID AS [Mã], GioVao AS [Giờ vào], GioRa AS [Giờ ra], GiamGia AS [Giảm giá], TongTien AS [Tổng tiền] FROM tblHoaDon WHERE GioVao >= " + GioVao + " AND GioRa <= " + GioRa + " AND ThanhToan = 1");
        }

        public DataTable ThongKeChiTieu(DateTime GioVao, DateTime GioRa)
        {
            return DataProvider.Instance.ExecuteQuery("SELECT ID AS [Mã], NgayLap AS [Ngày lập], IDNV AS [Mã nhân viên lập], TongTien AS [Tổng tiền] FROM tblPhieuChi");
            //return DataProvider.Instance.ExecuteQuery("SELECT ID AS [Mã], NgayLap AS [Ngày lập], IDNV AS [Mã nhân viên lập], TongTien AS [Tổng tiền] FROM tblPhieuChi WHERE GioVao >= " + GioVao + " AND GioRa <= " + GioRa);
        }

        public void DoiBan(int idBan1, int idBan2)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblHoaDon SET IDBan = " + idBan2 + " WHERE IDBan = " + idBan1);
        }
    }
}
