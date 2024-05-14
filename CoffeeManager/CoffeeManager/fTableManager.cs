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
using System.Globalization;

namespace CoffeeManager
{
    public partial class fTableManager : Form
    {
        private Account loginAccount;

        public Account LoginAccount
        {
            get { return loginAccount; }
            set { loginAccount = value; DoiTaiKhoan(loginAccount.IDCV); }
        }

        public fTableManager(Account acc)
        {
            InitializeComponent();

            this.LoginAccount = acc;

            TaiDanhSachBan();
            TaiDanhSachTenBan();
            TaiDanhSachDanhMuc();
            TaiDanhSachThucDonTheoDanhMuc(1);
        }

        // Hàm
        void DoiTaiKhoan(int iDCV)
        {
            adminToolStripMenuItem.Enabled = (iDCV == 1);
        }

        void TaiDanhSachDanhMuc()
        {
            List<Category> listCategory = CategoryDAO.Instance.LayDanhSachDanhMuc();

            cbxLoai.DataSource = listCategory;
            cbxLoai.DisplayMember = "Ten";
        }

        void TaiDanhSachThucDonTheoDanhMuc(int id)
        {
            List<Food> listFood = FoodDAO.Instance.LayDanhSachMonTheoDanhMuc(id);

            cbxMon.DataSource = listFood;
            cbxMon.DisplayMember = "Ten";
        }

        void TaiDanhSachBan()
        {
            flpDanhSachBan.Controls.Clear();
            List<Table> tableList = TableDAO.Instance.TaiDanhSachBan();

            foreach (Table item in tableList)
            {
                Button btn = new Button() { Width = 125, Height = 125, BackColor = Color.Pink };
                string trangThai = "Có người";
                if (item.CoNguoi == false)
                {
                    trangThai = "Trống";
                    btn.BackColor = Color.Aqua;
                }
                btn.Text = item.TenBan + Environment.NewLine + item.SoLuong + Environment.NewLine + trangThai;
                btn.Click += btn_Click;
                btn.Tag = item;
                flpDanhSachBan.Controls.Add(btn);
            }
        }

        void TaiDanhSachTenBan()
        {
            List<Table> listTable = TableDAO.Instance.TaiDanhSachBan();

            cbxChuyenBan.DataSource = listTable;
            cbxChuyenBan.DisplayMember = "TenBan";
        }

        void HienHoaDonTheoBan(int id)
        {
            CultureInfo cul = new CultureInfo("vi-VN");
            lsvCTHD.Items.Clear();
            List<DTO.Menu> listBillInfo = MenuDAO.Instance.HienMenuLenBang(id);
            int phuThu = 10000;
            if (1 <= id && id <= 6)
                phuThu = 5000;
            else if (13 <= id && id <= 18)
                phuThu = 15000;
            else if (25 <= id && id <= 30)
                phuThu = 0;
            int tongCong = 0;
            foreach (DTO.Menu item in listBillInfo)
            {
                ListViewItem lsvItem = new ListViewItem(item.Ten.ToString());
                lsvItem.SubItems.Add(item.Gia.ToString());
                lsvItem.SubItems.Add(item.SoLuong.ToString());
                lsvItem.SubItems.Add(item.TongTien.ToString());
                tongCong += item.TongTien;
                lsvCTHD.Items.Add(lsvItem);
            }
            tbxPhuThu.Text = phuThu.ToString();
            tongCong += phuThu;
            tbxTongTien.Text = tongCong.ToString();
        }

        // Sự kiện
        void btn_Click(object sender, EventArgs e)
        {
            int tableID = ((sender as Button).Tag as Table).ID;
            lsvCTHD.Tag = (sender as Button).Tag;
            HienHoaDonTheoBan(tableID);
        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAdmin f = new fAdmin();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void thôngTinNhânViênToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            fStaffManager f = new fStaffManager();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void kháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fGuestManager f = new fGuestManager();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void cbxLoai_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = 0;

            ComboBox cb = sender as ComboBox;

            if (cb.SelectedIndex == null)
                return;

            Category selected = cb.SelectedItem as Category;
            id = selected.ID;

            TaiDanhSachThucDonTheoDanhMuc(id);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            Table table = lsvCTHD.Tag as Table;

            int iDHD = BillDAO.Instance.LayHoaDonChuaThanhToanTheoBan(table.ID);
            int iDMon = (cbxMon.SelectedItem as Food).ID;
            int soLuong = (int) nmSoLuong.Value;

            if (iDHD == -1)
            {
                BillDAO.Instance.ThemHoaDon(table.ID);
                BillInfoDAO.Instance.ThemChiTietHoaDon(BillDAO.Instance.LayIDHoaDonLonNhat(), iDMon, soLuong);
                TaiDanhSachBan();
            }
            else
            {
                BillInfoDAO.Instance.ThemChiTietHoaDon(iDHD, iDMon, soLuong);
            }

            HienHoaDonTheoBan(table.ID);
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            Table table = lsvCTHD.Tag as Table;

            int iDHD = BillDAO.Instance.LayHoaDonChuaThanhToanTheoBan(table.ID);
            int giamGia = Convert.ToInt32(tbxGiamGia.Text);
            int tongTien = Convert.ToInt32(tbxTongTien.Text);
            tongTien -= giamGia;

            if (iDHD != -1)
            {
                if (MessageBox.Show(string.Format("Bạn có chắc thanh toán hoá đơn cho bàn {0}.\n Tổng cộng là: {1}", table.TenBan, tongTien), "Thông báo!", MessageBoxButtons.OKCancel) == DialogResult.OK)
                {
                    BillDAO.Instance.ThanhToan(iDHD, giamGia, tongTien);
                    HienHoaDonTheoBan(table.ID);
                    TaiDanhSachBan();
                }
            }
        }

        private void btnChuyenBan_Click(object sender, EventArgs e)
        {
            Table table = lsvCTHD.Tag as Table;

            int id1 = table.ID;
            int id2 = (cbxChuyenBan.SelectedItem as Table).ID;

            if (MessageBox.Show(string.Format("Bạn có chắc chuyển bàn {0} tới bàn {1}", id1, id2), "Thông báo!", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                BillDAO.Instance.DoiBan(id1, id2);
                TableDAO.Instance.ChuyenBan(id1);
                TaiDanhSachBan();
                HienHoaDonTheoBan(table.ID);
            }            
        }

        private void báoCáoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fReport f = new fReport();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }
    }
}
