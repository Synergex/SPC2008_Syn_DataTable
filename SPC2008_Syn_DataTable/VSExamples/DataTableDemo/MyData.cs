using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;

namespace DataTableDemo
{
    public static class MyData
    {
        public static System.Data.DataTable ProductDataTable;
        public static System.Data.DataTable CustomerDataTable;

        static MyData()
        {
            //connect to our Synergy server
            SynPSG.TableDemo.SynPSG remoteDataTable = new SynPSG.TableDemo.SynPSG();
            remoteDataTable.connect("localhost", 2500);

            //first, call the server initialiser
            remoteDataTable.SynPSGInit();

            //create a stream write to write out the XML to
            StreamWriter swProduct = new StreamWriter("productTable.xml");
            swProduct.Write(remoteDataTable.ProductTable());
            swProduct.Close();

            //create a stream write to write out the XML to
            StreamWriter swCustomer = new StreamWriter("CustomerTable.xml");
            swCustomer.Write(remoteDataTable.CustomerTable());
            swCustomer.Close();

            //create the product datatable
            ProductDataTable = new DataTable("ProductTable");
            ProductDataTable.ReadXml("productTable.xml");

            //create the customer datatable
            CustomerDataTable = new DataTable("CustomerTable");
            CustomerDataTable.ReadXml("CustomerTable.xml");

            //disconnect from the server
            remoteDataTable.disconnect();

            //delete temporary xml file
            File.Delete("productTable.xml");
            File.Delete("CustomerTable.xml");

        }
    }
}
