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
    public partial class fReport : Form
    {
        public fReport()
        {
            InitializeComponent();
        }

        private void fReport_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'CoffeeManagerDataSet1.tblPhieuChi' table. You can move, or remove it, as needed.
            this.tblPhieuChiTableAdapter.Fill(this.CoffeeManagerDataSet1.tblPhieuChi);
            // TODO: This line of code loads data into the 'CoffeeManagerDataSet.tblHoaDon' table. You can move, or remove it, as needed.
            this.tblHoaDonTableAdapter.Fill(this.CoffeeManagerDataSet.tblHoaDon);

            this.rpDoanhThu.RefreshReport();
        }
    }
}
