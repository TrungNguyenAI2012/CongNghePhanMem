using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DAO
{
    public class FoodDAO
    {
        private static FoodDAO instance;

        public static FoodDAO Instance
        {
            get { if (instance == null) instance = new FoodDAO(); return FoodDAO.instance; }
            private set { FoodDAO.instance = value; }
        }

        private FoodDAO() { }

        public List<Food> LayDanhSachMonTheoDanhMuc(int id)
        {
            List<Food> foodList = new List<Food>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblMon WHERE iDLM = " + id);

            foreach (DataRow item in data.Rows)
            {
                Food food = new Food(item);
                foodList.Add(food);
            }

            return foodList;
        }

        public List<Food> LayDanhSachMon()
        {
            List<Food> foods = new List<Food>();

            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblMon");

            foreach (DataRow item in data.Rows)
            {
                Food food = new Food(item);
                foods.Add(food);
            }

            return foods;
        }

        public Food LayMonTheoID(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM tblMon WHERE ID = " + id);

            foreach (DataRow item in data.Rows)
            {
                return new Food(item);
            }

            return null;
        }

        public void ThemMon(int IDLM, string ten, int gia)
        {
            DataProvider.Instance.ExecuteNonQuery("INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (" + IDLM + ", N'" + ten + "', " + gia + ")");
        }

        public void XoaMon(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("DELETE tblMon WHERE ID = " + id);
        }

        public void CapNhapMon(int id, int IDLM, string ten, int gia)
        {
            DataProvider.Instance.ExecuteNonQuery("UPDATE tblMon SET IDLM = " + IDLM + ", Ten = N'" + ten + "', Gia = " + gia + " WHERE ID = " + id);
        }
    }
}
