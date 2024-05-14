using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeManager.DTO
{
    public class Table
    {
        private int iDKV;
        private int iD;
        private string tenBan;
        private int soLuong;
        private bool coNguoi;

        public int IDKV { get => iDKV; set => iDKV = value; }
        public int ID { get => iD; set => iD = value; }
        public string TenBan { get => tenBan; set => tenBan = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
        public bool CoNguoi { get => coNguoi; set => coNguoi = value; }

        public Table(int iDKV, int iD, string tenBan, int soLuong, bool coNguoi)
        {
            this.iDKV = iDKV;
            this.iD = iD;
            this.tenBan = tenBan;
            this.soLuong = soLuong;
            this.coNguoi = coNguoi;
        }

        public Table(DataRow row)
        {
            this.iDKV = (int)row["iDKV"];
            this.iD = (int)row["iD"];
            this.tenBan = row["Ten"].ToString();
            this.soLuong = (int)row["soNguoi"];
            this.coNguoi = (bool)row["coNguoi"];
        }
    }
}
