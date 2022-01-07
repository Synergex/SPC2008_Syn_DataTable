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
    public partial class customerMaint : Form
    {
        public customerMaint()
        {
            InitializeComponent();
        }
        
        DataTable myDataTable;

        private void customerMaint_Load(object sender, EventArgs e)
        {
            //connect to our Synergy server
            SynPSG.TableDemo.SynPSG remoteDataTable = new SynPSG.TableDemo.SynPSG();
            remoteDataTable.connect("localhost", 2500);

            //first, call the server initialiser
            remoteDataTable.SynPSGInit();

            //create a stream write to write out the XML to
            StreamWriter sw = new StreamWriter("CustomerTable.xml");
            sw.Write(remoteDataTable.CustomerTable());
            sw.Close();

            //create the local datatable
            myDataTable = new DataTable("CustomerTable");
            myDataTable.ReadXml("CustomerTable.xml");

            //delete temporary xml file
            File.Delete("CustomerTable.xml");

            //disconnect server
            remoteDataTable.disconnect();

            //we now have a loaded table

            //assign the binding source to the binding navigation control
            bNav.BindingSource = bSource;

            //assing our data table to the binding source
            bSource.DataSource = myDataTable;

            //bind the UI controls to the data binding source
            customerAccount.DataBindings.Add(new Binding("Text", bSource, "Account", true));
            name.DataBindings.Add(new Binding("Text", bSource, "Company", true));
            number.DataBindings.Add(new Binding("Text", bSource, "Number", true));
            street.DataBindings.Add(new Binding("Text", bSource, "Street", true));
            city.DataBindings.Add(new Binding("Text", bSource, "City", true));
            region.DataBindings.Add(new Binding("Text", bSource, "Region", true));
            dateOpened.DataBindings.Add(new Binding("Value", bSource, "DateOpened", true));
            creditLimit.DataBindings.Add(new Binding("Value", bSource, "CreditLimit", true));
        }

    }
}
