using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;


namespace DataTableDemo
{
    public partial class ProductList : Form
    {
        public ProductList()
        {
            InitializeComponent();
        }

        private void ProductList_Load(object sender, EventArgs e)
        {

            //assign the data table to the grid view
            dataGridView1.DataSource = MyData.ProductDataTable;

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
