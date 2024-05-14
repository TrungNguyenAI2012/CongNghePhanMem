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
    public partial class fGuestManager : Form
    {
        public fGuestManager()
        {
            InitializeComponent();

            TaiDanhSachKhachHang();
            LayKhachHang((cbxMaKhachHang.SelectedItem as Guest).ID);
        }

        // Hàm
        void TaiDanhSachKhachHang()
        {
            List<Guest> list = GuestDAO.Instance.TaiDanhSachKhachHang();

            cbxMaKhachHang.DataSource = list;
            cbxMaKhachHang.DisplayMember = "ID";
        }

        void LayKhachHang(int id)
        {
            Guest Guest = GuestDAO.Instance.LayKhachHangTheoID(id);

            tbxTenKhachHang.Text = Guest.Ten;
            tbxCMND.Text = Guest.CMND;
            cbxGioiTinh.Checked = !Guest.GioiTinh;
            tbxDiaChi.Text = Guest.DiaChi;
            tbxSoDienThoai.Text = Guest.SDT;
            tbxDiemTichLuy.Text = Guest.Diem.ToString();
        }

        void ThemKhachHang(string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int Diem)
        {
            GuestDAO.Instance.ThemKhachHang(taiKhoan, ten, cMND, gioiTinh, diaChi, sDT, Diem);
        }

        void XoaKhachHang(int id)
        {
            GuestDAO.Instance.XoaKhachHang(id);
        }

        void SuaKhachHang(int id, string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int Diem)
        {
            GuestDAO.Instance.CapNhapKhachHang(id, taiKhoan, ten, cMND, gioiTinh, diaChi, sDT, Diem);
        }

        // Sự kiện
        private void cbxMaKhachHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayKhachHang((cbxMaKhachHang.SelectedItem as Guest).ID);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                ThemKhachHang(tbxTaiKhoan.Text, tbxTenKhachHang.Text, tbxCMND.Text, Convert.ToBoolean(cbxGioiTinh.Checked), tbxDiaChi.Text, tbxSoDienThoai.Text, Convert.ToInt32(tbxDiemTichLuy.Text));
                MessageBox.Show("Thêm khách hàng thành công!");
                TaiDanhSachKhachHang();
            }
            catch
            {
                MessageBox.Show("Thêm khách hàng thất bại!");
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                XoaKhachHang((cbxMaKhachHang.SelectedItem as Guest).ID);
                MessageBox.Show("Xoá khách hàng thành công!");
                TaiDanhSachKhachHang();
            }
            catch
            {
                MessageBox.Show("Xoá khách hàng thất bại!");
            }
        }

        private void btnCapNhap_Click(object sender, EventArgs e)
        {
            try
            {
                SuaKhachHang((cbxMaKhachHang.SelectedItem as Guest).ID, tbxTaiKhoan.Text, tbxTenKhachHang.Text, tbxCMND.Text, Convert.ToBoolean(cbxGioiTinh.Checked), tbxDiaChi.Text, tbxSoDienThoai.Text, Convert.ToInt32(tbxDiemTichLuy.Text));
                MessageBox.Show("Cập nhập khách hàng thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập khách hàng thất bại!");
            }
        }

        private void btnXemLichSu_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập xem lịch sử mua hàng của khách đang được nâng cấp!");
        }

        private void pbxHinhDaiDien_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập hình đang được nâng cấp!");
        }
    }
}
