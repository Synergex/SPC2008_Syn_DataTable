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
            //connect to our Synergy server
            SynPSG.TableDemo.SynPSG remoteDataTable = new SynPSG.TableDemo.SynPSG();
            remoteDataTable.connect("localhost", 2500);

            //first, call the server initialiser
            remoteDataTable.SynPSGInit();

            //create a stream write to write out the XML to
            StreamWriter sw=new StreamWriter("productTable.xml");
            sw.Write(remoteDataTable.ProductTable());
            sw.Close();

            //disconnect from the server
            remoteDataTable.disconnect();

            //create the local datatable
            DataTable myDataTable = new DataTable("ProductTable");
            myDataTable.ReadXml("productTable.xml");

            //delete the temporary xml file
            File.Delete("productTable.xml");

            //assign the data table to the grid view
            dataGridView1.DataSource = myDataTable;

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
