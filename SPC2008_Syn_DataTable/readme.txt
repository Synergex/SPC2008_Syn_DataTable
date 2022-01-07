SPC 2008 .DataTable demo.

Minimum version V9.1.5 required to build and execute this example.

This project demonstrates the ability to use the Synergy object 
syntax to define classes for DataTable, DataColumn and DataRow.
These can then be used in your Synergy code to build and expose
the data and table schema to a .NET client using XML and 
xfServerPlus.  It was demonstrated at the 2008 SPC.

Extract the zip file onto you C: drive.

Once extracted you must run the installation program to install
the client application.  The setup can be found in 
C:\SPC2008_Syn_DataTable\setup\ folder.

The Workbench workspace can be found in the 
C:\SPC2008_Syn_DataTable\prj folder, named SynPSGWorkspace.

If you do not have workbench, open a command window and 
navigate to the \SPC2008_Syn_DataTable folder.  
Run the setup.bat batch file.  This will configure 
the base environment,

You will need to create and xfServerPlus server.  It 
should be configured on port 2500 and include the 
environment variable XFPL_INIPATH 
pointing to C:\SPC2008_Syn_DataTable\smc

To run the program, from the command prompt, type

Runit <return>

If you need to rebuild the sample application then 
from the command window use the following commands:

Buildit.bat

The visual studio client application can be found 
in C:\SPC2008_Syn_DataTable\VSExamples.  You will 
need Visual Studio 2008.

