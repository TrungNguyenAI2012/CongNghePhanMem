using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CoffeeManager.DAO;
using CoffeeManager.DTO;

namespace CoffeeManager
{
    public partial class fAdmin : Form
    {
        public fAdmin()
        {
            InitializeComponent();

            ChinhNgayDauThang();
            TaiDanhSachHoaDon(dpkBatDauDT.Value, dpkKetThucDT.Value);
            TaiDanhSachChiTieu(dpkBatDauCT.Value, dpkKetThucCT.Value);

            TaiDanhSachDanhMuc();
            LayTenDanhMuc((cbxMaLoaiMon.SelectedItem as Category).ID);

            TaiDanhSachMon();
            LayMon((cbxMaMon.SelectedItem as Food).ID);

            TaiDanhSachNguyenLieu();
            LayNguyenLieu((cbxMaNguyenLieu.SelectedItem as Material).ID);

            TaiDanhSachKhuVuc();
            LayKhuVuc((cbxMaKhuVuc.SelectedItem as Area).ID);

            TaiDanhSachBan();
            LayBan((cbxMaBan.SelectedItem as Table).ID);
        }

        // Hàm
        void ChinhNgayDauThang()
        {
            DateTime today = DateTime.Now;
            dpkBatDauDT.Value = new DateTime(today.Year, today.Month, 1);
            dpkKetThucDT.Value = dpkBatDauDT.Value.AddMonths(1).AddDays(-1);
            dpkBatDauCT.Value = new DateTime(today.Year, today.Month, 1);
            dpkKetThucCT.Value = dpkBatDauCT.Value.AddMonths(1).AddDays(-1);
        }

        void TaiDanhSachHoaDon(DateTime GioVao, DateTime GioRa)
        {
            dtgvDoanhThu.DataSource = BillDAO.Instance.ThongKeDoanhThu(GioVao, GioRa);
        }

        void TaiDanhSachChiTieu(DateTime GioVao, DateTime GioRa)
        {
            dtgvChiTieu.DataSource = BillDAO.Instance.ThongKeChiTieu(GioVao, GioRa);
        }

        void TaiDanhSachDanhMuc()
        {
            List<Category> list = CategoryDAO.Instance.LayDanhSachDanhMuc();

            cbxMaLoaiMon.DataSource = list;
            cbxMaLoaiMon.DisplayMember = "ID";
        }
        void LayTenDanhMuc(int id)
        {
            tbxTenLoaiMon.Text = CategoryDAO.Instance.LayTenDanhMucTheoID(id);
        }
        void ThemDanhMuc(string ten)
        {
            CategoryDAO.Instance.ThemDanhMuc(ten);
        }
        void XoaDanhMuc(int id)
        {
            CategoryDAO.Instance.XoaDanhMuc(id);
        }
        void SuaDanhMuc(int id, string ten)
        {
            CategoryDAO.Instance.CapNhapDanhMuc(id, ten);
        }

        void TaiDanhSachMon()
        {
            List<Food> list = FoodDAO.Instance.LayDanhSachMon();

            cbxMaMon.DataSource = list;
            cbxMaMon.DisplayMember = "ID";
        }
        void LayMon(int id)
        {
            List<Category> list = CategoryDAO.Instance.LayDanhSachDanhMuc();
            cbxLoaiMon.DataSource = list;
            cbxLoaiMon.DisplayMember = "ID";

            Food food = FoodDAO.Instance.LayMonTheoID(id);

            cbxLoaiMon.SelectedIndex = food.IDHD - 1;
            tbxTenMon.Text = food.Ten;
            tbxGiaMon.Text = food.Gia.ToString();
        }
        void ThemMon(int IDLM, string ten, int gia)
        {
            FoodDAO.Instance.ThemMon(IDLM, ten, gia);
        }
        void XoaMon(int id)
        {
            FoodDAO.Instance.XoaMon(id);
        }
        void SuaMon(int id, int IDLM, string ten, int gia)
        {
            FoodDAO.Instance.CapNhapMon(id, IDLM, ten, gia);
        }

        void TaiDanhSachNguyenLieu()
        {
            List<Material> list = MaterialDAO.Instance.LayDanhSachNguyenLieu();

            cbxMaNguyenLieu.DataSource = list;
            cbxMaNguyenLieu.DisplayMember = "ID";
        }
        void LayNguyenLieu(int id)
        {
            Material Material = MaterialDAO.Instance.LayNguyenLieuTheoID(id);

            tbxTenNguyenLieu.Text = Material.Ten;
            tbxSoLuongTon.Text = Material.SoLuong.ToString();
            tbxDonViTinh.Text = Material.DVT;
        }
        void ThemNguyenLieu(string ten, int soLuong, string dvt)
        {
            MaterialDAO.Instance.ThemNguyenLieu(ten, soLuong, dvt);
        }
        void XoaNguyenLieu(int id)
        {
            MaterialDAO.Instance.XoaNguyenLieu(id);
        }
        void SuaNguyenLieu(int id, string ten, int soLuong, string dvt)
        {
            MaterialDAO.Instance.CapNhapNguyenLieu(id, ten, soLuong, dvt);
        }

        void TaiDanhSachKhuVuc()
        {
            List<Area> list = AreaDAO.Instance.LayDanhSachKhuVuc();

            cbxMaKhuVuc.DataSource = list;
            cbxMaKhuVuc.DisplayMember = "ID";
        }
        void LayKhuVuc(int id)
        {
            Area Area = AreaDAO.Instance.LayKhuVucTheoID(id);

            tbxTenKhuVuc.Text = Area.Ten;
            tbxGiaKhuVuc.Text = Area.Gia.ToString();
        }
        void ThemKhuVuc(string ten, int gia)
        {
            AreaDAO.Instance.ThemKhuVuc(ten, gia);
        }
        void XoaKhuVuc(int id)
        {
            AreaDAO.Instance.XoaKhuVuc(id);
        }
        void SuaKhuVuc(int id, string ten, int gia)
        {
            AreaDAO.Instance.CapNhapKhuVuc(id, ten, gia);
        }

        void TaiDanhSachBan()
        {
            List<Table> list = TableDAO.Instance.TaiDanhSachBan();

            cbxMaBan.DataSource = list;
            cbxMaBan.DisplayMember = "ID";
        }
        void LayBan(int id)
        {
            List<Area> list = AreaDAO.Instance.LayDanhSachKhuVuc();
            cbxKhuVuc.DataSource = list;
            cbxKhuVuc.DisplayMember = "ID";

            Table Table = TableDAO.Instance.LayBanTheoID(id);

            cbxKhuVuc.SelectedIndex = Table.IDKV - 1;
            tbxTenBan.Text = Table.TenBan;
            nmSoLuongNguoi.Value = Table.SoLuong;
        }
        void ThemBan(int IDKV, string ten, int SoLuong)
        {
            TableDAO.Instance.ThemBan(IDKV, ten, SoLuong);
        }
        void XoaBan(int id)
        {
            TableDAO.Instance.XoaBan(id);
        }
        void SuaBan(int id, int IDKV, string ten, int SoLuong)
        {
            TableDAO.Instance.CapNhapBan(id, IDKV, ten, SoLuong);
        }

        // Sự kiện
        private void btnThongKeDT_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập thống kê theo ngày cụ thể đang được nâng cấp!");
            TaiDanhSachHoaDon(dpkBatDauDT.Value, dpkKetThucDT.Value);
        }

        private void btnThongKeCT_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập thống kê theo ngày cụ thể đang được nâng cấp!");
            TaiDanhSachChiTieu(dpkBatDauCT.Value, dpkKetThucCT.Value);
        }

        private void cbxMaLoaiMon_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayTenDanhMuc((cbxMaLoaiMon.SelectedItem as Category).ID);
        }
        private void btnThemLoaiMon_Click(object sender, EventArgs e)
        {
            try
            {
                ThemDanhMuc(tbxTenLoaiMon.Text);
                MessageBox.Show("Thêm danh mục thành công!");
                TaiDanhSachDanhMuc();
            }
            catch
            {
                MessageBox.Show("Thêm danh mục thất bại!");
            }
        }
        private void btnXoaLoaiMon_Click(object sender, EventArgs e)
        {
            try
            {
                XoaDanhMuc((cbxMaLoaiMon.SelectedItem as Category).ID);
                MessageBox.Show("Xoá danh mục thành công!");
                TaiDanhSachDanhMuc();
            }
            catch
            {
                MessageBox.Show("Xoá danh mục thất bại!");
            }
        }
        private void btnCapNhapLoaiMon_Click(object sender, EventArgs e)
        {
            try
            {
                SuaDanhMuc((cbxMaLoaiMon.SelectedItem as Category).ID, tbxTenLoaiMon.Text);
                MessageBox.Show("Cập nhập danh mục thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập danh mục thất bại!");
            }
        }

        private void cbxMaMon_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayMon((cbxMaMon.SelectedItem as Food).ID);
        }
        private void btnThemMon_Click(object sender, EventArgs e)
        {
            try
            {
                ThemMon((cbxMaMon.SelectedItem as Food).ID, tbxTenMon.Text, Convert.ToInt32(tbxGiaMon.Text));
                MessageBox.Show("Thêm món thành công!");
                TaiDanhSachMon();
            }
            catch
            {
                MessageBox.Show("Thêm món thất bại!");
            }
        }
        private void btnXoaMon_Click(object sender, EventArgs e)
        {
            try
            {
                XoaMon((cbxMaMon.SelectedItem as Food).ID);
                MessageBox.Show("Xoá món thành công!");
                TaiDanhSachMon();
            }
            catch
            {
                MessageBox.Show("Xoá món thất bại!");
            }
        }
        private void btnCapNhapMon_Click(object sender, EventArgs e)
        {
            try
            {
                SuaMon((cbxMaMon.SelectedItem as Food).ID, (int)cbxLoaiMon.SelectedIndex + 1, tbxTenMon.Text, Convert.ToInt32(tbxGiaMon.Text));
                MessageBox.Show("Cập nhập món thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập món thất bại!");
            }
        }

        private void cbxMaNguyenLieu_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayNguyenLieu((cbxMaNguyenLieu.SelectedItem as Material).ID);
        }
        private void btnThemNguyenLieu_Click(object sender, EventArgs e)
        {
            try
            {
                ThemNguyenLieu(tbxTenNguyenLieu.Text, Convert.ToInt32(tbxSoLuongTon.Text), tbxDonViTinh.Text);
                MessageBox.Show("Thêm nguyên liệu thành công!");
                TaiDanhSachNguyenLieu();
            }
            catch
            {
                MessageBox.Show("Thêm nguyên liệu thất bại!");
            }
        }
        private void btnXoaNguyenLieu_Click(object sender, EventArgs e)
        {
            try
            {
                XoaNguyenLieu((cbxMaNguyenLieu.SelectedItem as Material).ID);
                MessageBox.Show("Xoá nguyên liệu thành công!");
                TaiDanhSachNguyenLieu();
            }
            catch
            {
                MessageBox.Show("Xoá nguyên liệu thất bại!");
            }
        }
        private void btnCapNhapNguyenLieu_Click(object sender, EventArgs e)
        {
            try
            {
                SuaNguyenLieu((cbxMaNguyenLieu.SelectedItem as Material).ID, tbxTenNguyenLieu.Text, Convert.ToInt32(tbxSoLuongTon.Text), tbxDonViTinh.Text);
                MessageBox.Show("Cập nhập nguyên liệu thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập nguyên liệu thất bại!");
            }
        }

        private void cbxMaKhuVuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayKhuVuc((cbxMaKhuVuc.SelectedItem as Area).ID);
        }
        private void btnThemKhuVuc_Click(object sender, EventArgs e)
        {
            try
            {
                ThemKhuVuc(tbxTenKhuVuc.Text, Convert.ToInt32(tbxGiaKhuVuc.Text));
                MessageBox.Show("Thêm khu vực thành công!");
                TaiDanhSachKhuVuc();
            }
            catch
            {
                MessageBox.Show("Thêm khu vực thất bại!");
            }
        }
        private void btnXoaKhuVuc_Click(object sender, EventArgs e)
        {
            try
            {
                XoaKhuVuc((cbxMaKhuVuc.SelectedItem as Area).ID);
                MessageBox.Show("Xoá khu vực thành công!");
                TaiDanhSachKhuVuc();
            }
            catch
            {
                MessageBox.Show("Xoá khu vực thất bại!");
            }
        }
        private void btnCapNhapKhuVuc_Click(object sender, EventArgs e)
        {
            try
            {
                SuaKhuVuc((cbxMaKhuVuc.SelectedItem as Area).ID, tbxTenKhuVuc.Text, Convert.ToInt32(tbxGiaKhuVuc.Text));
                MessageBox.Show("Cập nhập khu vực thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập khu vực thất bại!");
            }
        }

        private void cbxMaBan_SelectedIndexChanged(object sender, EventArgs e)
        {
            LayBan((cbxMaBan.SelectedItem as Table).ID);
        }
        private void btnThemBan_Click(object sender, EventArgs e)
        {
            try
            {
                ThemBan((cbxMaBan.SelectedItem as Table).ID, tbxTenBan.Text, (int)nmSoLuongNguoi.Value);
                MessageBox.Show("Thêm bàn thành công!");
                TaiDanhSachBan();
            }
            catch
            {
                MessageBox.Show("Thêm bàn thất bại!");
            }
        }
        private void btnXoaBan_Click(object sender, EventArgs e)
        {
            try
            {
                XoaBan((cbxMaBan.SelectedItem as Table).ID);
                MessageBox.Show("Xoá bàn thành công!");
                TaiDanhSachBan();
            }
            catch
            {
                MessageBox.Show("Xoá bàn thất bại!");
            }
        }
        private void btnCapNhap_Click(object sender, EventArgs e)
        {
            try
            {
                SuaBan((cbxMaBan.SelectedItem as Table).ID, (int)cbxKhuVuc.SelectedIndex + 1, tbxTenBan.Text, (int) nmSoLuongNguoi.Value);
                MessageBox.Show("Cập nhập bàn thành công!");
            }
            catch
            {
                MessageBox.Show("Cập nhập bàn thất bại!");
            }
        }
        
        private void btnDichVu_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Chức năng dịch hiện chưa mở!");
        }
        private void pbx_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Cập nhập hình đang được nâng cấp!");
        }
    }
}
