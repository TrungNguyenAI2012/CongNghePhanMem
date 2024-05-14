using CoffeeManager.DAO;
using CoffeeManager.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CoffeeManager
{
    public partial class fLogin : Form
    {
        public fLogin()
        {
            InitializeComponent();
        }

        bool DangNhap(string userName, string passWord)
        {
            return AccountDAO.Instance.DangNhap(userName, passWord);
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            string userName = tbxTenTK.Text;
            string passWord = tbxMatKhau.Text;
            if (DangNhap(userName, passWord))
            {
                Account loginAccount = AccountDAO.Instance.LayTaiKhoanTuTenTaiKhoan(userName);
                fTableManager f = new fTableManager(loginAccount);
                this.Hide();
                f.ShowDialog();
                this.Show();
            }
            else
                MessageBox.Show("Sai tài khoản hoặc mật khẩu");
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
