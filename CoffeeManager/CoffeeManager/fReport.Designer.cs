
namespace CoffeeManager
{
    partial class fReport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.rpDoanhThu = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tpChiTieu = new Microsoft.Reporting.WinForms.ReportViewer();
            this.CoffeeManagerDataSet = new CoffeeManager.CoffeeManagerDataSet();
            this.tblHoaDonBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tblHoaDonTableAdapter = new CoffeeManager.CoffeeManagerDataSetTableAdapters.tblHoaDonTableAdapter();
            this.CoffeeManagerDataSet1 = new CoffeeManager.CoffeeManagerDataSet1();
            this.tblPhieuChiBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tblPhieuChiTableAdapter = new CoffeeManager.CoffeeManagerDataSet1TableAdapters.tblPhieuChiTableAdapter();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CoffeeManagerDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblHoaDonBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CoffeeManagerDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblPhieuChiBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(12, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(776, 426);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.rpDoanhThu);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(768, 400);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Doanh thu";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tpChiTieu);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(768, 400);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Chi tiêu";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // rpDoanhThu
            // 
            this.rpDoanhThu.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSetChiTieu";
            reportDataSource1.Value = this.tblPhieuChiBindingSource;
            this.rpDoanhThu.LocalReport.DataSources.Add(reportDataSource1);
            this.rpDoanhThu.LocalReport.ReportEmbeddedResource = "CoffeeManager.rpChiTieu.rdlc";
            this.rpDoanhThu.Location = new System.Drawing.Point(3, 3);
            this.rpDoanhThu.Name = "rpDoanhThu";
            this.rpDoanhThu.ServerReport.BearerToken = null;
            this.rpDoanhThu.Size = new System.Drawing.Size(762, 394);
            this.rpDoanhThu.TabIndex = 1;
            // 
            // tpChiTieu
            // 
            this.tpChiTieu.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource2.Name = "DataSet1";
            reportDataSource2.Value = this.tblPhieuChiBindingSource;
            this.tpChiTieu.LocalReport.DataSources.Add(reportDataSource2);
            this.tpChiTieu.LocalReport.ReportEmbeddedResource = "CoffeeManager.rpChiTieu.rdlc";
            this.tpChiTieu.Location = new System.Drawing.Point(3, 3);
            this.tpChiTieu.Name = "tpChiTieu";
            this.tpChiTieu.ServerReport.BearerToken = null;
            this.tpChiTieu.Size = new System.Drawing.Size(762, 394);
            this.tpChiTieu.TabIndex = 2;
            // 
            // CoffeeManagerDataSet
            // 
            this.CoffeeManagerDataSet.DataSetName = "CoffeeManagerDataSet";
            this.CoffeeManagerDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblHoaDonBindingSource
            // 
            this.tblHoaDonBindingSource.DataMember = "tblHoaDon";
            this.tblHoaDonBindingSource.DataSource = this.CoffeeManagerDataSet;
            // 
            // tblHoaDonTableAdapter
            // 
            this.tblHoaDonTableAdapter.ClearBeforeFill = true;
            // 
            // CoffeeManagerDataSet1
            // 
            this.CoffeeManagerDataSet1.DataSetName = "CoffeeManagerDataSet1";
            this.CoffeeManagerDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblPhieuChiBindingSource
            // 
            this.tblPhieuChiBindingSource.DataMember = "tblPhieuChi";
            this.tblPhieuChiBindingSource.DataSource = this.CoffeeManagerDataSet1;
            // 
            // tblPhieuChiTableAdapter
            // 
            this.tblPhieuChiTableAdapter.ClearBeforeFill = true;
            // 
            // fReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tabControl1);
            this.Name = "fReport";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Báo cáo";
            this.Load += new System.EventHandler(this.fReport_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.CoffeeManagerDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblHoaDonBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CoffeeManagerDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblPhieuChiBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private Microsoft.Reporting.WinForms.ReportViewer rpDoanhThu;
        private System.Windows.Forms.TabPage tabPage2;
        private Microsoft.Reporting.WinForms.ReportViewer tpChiTieu;
        private System.Windows.Forms.BindingSource tblHoaDonBindingSource;
        private CoffeeManagerDataSet CoffeeManagerDataSet;
        private CoffeeManagerDataSetTableAdapters.tblHoaDonTableAdapter tblHoaDonTableAdapter;
        private System.Windows.Forms.BindingSource tblPhieuChiBindingSource;
        private CoffeeManagerDataSet1 CoffeeManagerDataSet1;
        private CoffeeManagerDataSet1TableAdapters.tblPhieuChiTableAdapter tblPhieuChiTableAdapter;
    }
}