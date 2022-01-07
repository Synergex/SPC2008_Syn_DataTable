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
        
        private void customerMaint_Load(object sender, EventArgs e)
        {

            //assing our data table to the binding source
            bSource.DataSource = MyData.CustomerDataTable;

            //assign the binding source to the binding navigation control
            bNav.BindingSource = bSource;

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

        private void btnClose_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}
