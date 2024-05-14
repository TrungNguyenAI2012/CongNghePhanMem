using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class MenuDAO
    {
        private static MenuDAO instance;

        public static MenuDAO Instance
        {
            get { if (instance == null) instance = new MenuDAO(); return MenuDAO.instance; }
            private set { MenuDAO.instance = value; }
        }

        private MenuDAO() { }

        public List<Menu> HienMenuLenBang(int id)
        {
            List<Menu> menuList = new List<Menu>();

            string query = "SELECT M.Ten, M.Gia, CT.SoLuong, (CT.SoLuong * M.Gia) AS TongTien FROM tblChiTietHoaDon CT, tblHoaDon HD, tblMon M WHERE CT.IDHD = hd.ID AND CT.IDMon = M.ID AND HD.ThanhToan = 0 AND HD.IDBan = " + id;

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Menu menu = new Menu(item);
                menuList.Add(menu);
            }

            return menuList;
        }
    }
}
