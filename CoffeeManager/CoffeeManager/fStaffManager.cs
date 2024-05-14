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
    public partial class fStaffManager : Form
    {
        public fStaffManager()
        {
            InitializeComponent();

            TaiDanhSachNhanVien();
            LayNhanVien((cbxMaNhanVien.SelectedItem as Staff).ID);
        }

        // Hàm
        void TaiDanhSachNhanVien()
        {
            List<Staff> list = StaffDAO.Instance.TaiDanhSachNhanVien();

            cbxMaNhanVien.DataSource = list;
            cbxMaNhanVien.DisplayMember = "ID";
        }
        
        void LayNhanVien(int id)
        {
            Staff Staff = StaffDAO.Instance.LayNhanVienTheoID(id);

            tbxTenNhanVien.Text = Staff.Ten;
            tbxCMND.Text = Staff.CMND;
            cbxGioiTinh.Checked = !Staff.GioiTinh;
            tbxDiaChi.Text = Staff.DiaChi;
            tbxSoDienThoai.Text = Staff.SDT;
            tbxLuongCoBan.Text = Staff.LuongCB.ToString();
        }
        
        void ThemNhanVien(string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int luongCB)
        {
            StaffDAO.Instance.ThemNhanVien(taiKhoan, ten, cMND, gioiTinh, diaChi, sDT, luongCB);
        }
        
        void XoaNhanVien(int id)
        {
            StaffDAO.Instance.XoaNhanVien(id);
        }
        
        void SuaNhanVien(int id, string taiKhoan, string ten, string cMND, bool gioiTinh, string diaChi, string sDT, int luongCB)
        {
            StaffDAO.Instance.CapNhapNhanVien(id, taiKhoan, ten, cMND, gioiTinh, diaChi, sDT, luongCB);
        }

        // Sự kiện
        private void cbxMaNhanVien_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayNhanVien((cbxMaNhanVien.SelectedItem as Staff).ID);
        }
        
        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                ThemNhanVien(tbxTaiKhoan.Text, tbxTenNhanVien.Text, tbxCMND.Text, Convert.ToBoolean(cbxGioiTinh.Checked), tbxDiaChi.Text, tbxSoDienThoai.Text, Convert.ToInt32(tbxLuongCoBan.Text));
                MessageBox.Show("Thêm nhân viên thành công!");
                TaiDanhSachNhanVien();
            }
            catch
            {
                MessageBox.Show("Thêm nhân viên thất bại!");
            }
        }
        
        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                XoaNhanVien((cbxMaNhanVien.SelectedItem as Staff).ID);
                MessageBox.Show("Xoá nhân viên thành công!");
                TaiDanhSachNhanVien();
            }
            catch
            {
                MessageBox.Show("Xoá nhân viên thất bại!");
            }
        }
       
        private void btnCapNhap_Click(object sender, EventArgs e)
        {
            try
            {
                SuaNhanVien((cbxMaNhanVien.SelectedItem as Staff).ID, tbxTaiKhoan.Text, tbxTenNhanVien.Text, tbxCMND.Text, Convert.ToBoolean(cbxGioiTinh.Checked), tbxDiaChi.Text, tbxSoDienThoai.Text, Convert.ToInt32(tbxLuongCoBan.Text));
                MessageBox.Show("Cập nhập nhân viên thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập nhân viên thất bại!");
            }
        }

        private void btnXemGioLam_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập xem bảng chấm công của nhân viên đang được nâng cấp!");
        }

        private void pbxHinhDaiDien_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập hình đang được nâng cấp!");
        }
    }
}
