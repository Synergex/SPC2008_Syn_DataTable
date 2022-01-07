using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DataTableDemo
{
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void productListingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ProductList pl = new ProductList();
            pl.MdiParent = this;
            pl.Dock = DockStyle.Fill;
            pl.Show();
        }

        private void customerMaintenanceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            customerMaint cm = new customerMaint();
            cm.ShowDialog(this);
        }

        private void Main_Load(object sender, EventArgs e)
        {
            Background b = new Background();
            b.MdiParent = this;
            b.Dock = DockStyle.Fill;
            b.Show();
        }
    }
}
