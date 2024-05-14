using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Account
    {
        private int iDCV;
        private string tenTK;
        private string tenHT;
        private string matKhau;

        public int IDCV { get => iDCV; set => iDCV = value; }
        public string TenTK { get => tenTK; set => tenTK = value; }
        public string TenHT { get => tenHT; set => tenHT = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }

        public Account(int iDCV, string tenTK, string tenHT, string matKhau = null)
        {
            this.iDCV = iDCV;
            this.tenTK = tenTK;
            this.TenHT = tenHT;
            this.matKhau = matKhau;
        }

        public Account(DataRow row)
        {
            this.iDCV = (int) row["IDCV"];
            this.tenTK = row["TenTK"].ToString();
            this.TenHT = row["TenHT"].ToString();
            this.matKhau = row["MatKhau"].ToString();
        }
    }
}
