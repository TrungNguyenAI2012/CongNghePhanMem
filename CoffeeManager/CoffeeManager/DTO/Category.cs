using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Category
    {
        private int iD;
        private string ten;

        public int ID { get => iD; set => iD = value; }
        public string Ten { get => ten; set => ten = value; }

        public Category(int iD, string ten)
        {
            this.iD = iD;
            this.ten = ten;
        }

        public Category(DataRow row)
        {
            this.iD = (int) row["iD"];
            this.ten = row["ten"].ToString();
        }
    }
}
