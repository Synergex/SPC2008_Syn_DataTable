rem
rem This command file we rebuild the sample
rem

set SYNEXPDIR=%DEVROOT%\Applications\hdr
set SYNIMPDIR=%DEVROOT%\Applications\hdr

del /F /S /Q %DEVROOT%\*.dbo
del /F /S /Q %DEVROOT%\*.dbh
del /F /S /Q %DEVROOT%\*.olb

dblproto %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemDate.dbl
dblproto %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemException.dbl
dblproto %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemType.dbl
dbl -d -TXW  -o %DEVROOT%\Applications\obj\SynPSGSystem\SynPSGSystemDate.DBO %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemDate.dbl
dbl -d -TXW  -o %DEVROOT%\Applications\obj\SynPSGSystem\SynPSGSystemException.DBO %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemException.dbl
dbl -d -TXW  -o %DEVROOT%\Applications\obj\SynPSGSystem\SynPSGSystemType.DBO %DEVROOT%\Applications\src\SynPSGSystem\SynPSGSystemType.dbl
dblibr -ca %DEVROOT%\Applications\lib\SynPSGSystem.OLB
dblibr -w -r %DEVROOT%\Applications\lib\SynPSGSystem.OLB  %DEVROOT%\applications\obj\SynPSGSystem\SynPSGSystemDate.DBO %DEVROOT%\applications\obj\SynPSGSystem\SynPSGSystemException.DBO %DEVROOT%\applications\obj\SynPSGSystem\SynPSGSystemType.DBO
dblink -d -l %DEVROOT%\exe\SynPSGSystem.ELB %DEVROOT%\applications\lib\SynPSGSystem.OLB


dblproto %DEVROOT%\Applications\src\SynPSGData\SynPSGDataColumn.dbl
dblproto %DEVROOT%\Applications\src\SynPSGData\SynPSGDataColumnCollection.dbl
dblproto %DEVROOT%\Applications\src\SynPSGData\SynPSGDataRow.dbl
dblproto %DEVROOT%\Applications\src\SynPSGData\SynPSGDataRowCollection.dbl
dblproto %DEVROOT%\Applications\src\SynPSGData\SynPSGDataTable.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGData\SynPSGDataColumn.DBO %DEVROOT%\applications\src\SynPSGData\SynPSGDataColumn.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGData\SynPSGDataColumnCollection.DBO %DEVROOT%\applications\src\SynPSGData\SynPSGDataColumnCollection.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGData\SynPSGDataRow.DBO %DEVROOT%\applications\src\SynPSGData\SynPSGDataRow.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGData\SynPSGDataRowCollection.DBO %DEVROOT%\applications\src\SynPSGData\SynPSGDataRowCollection.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGData\SynPSGDataTable.DBO %DEVROOT%\applications\src\SynPSGData\SynPSGDataTable.dbl
dblibr -ca %DEVROOT%\applications\lib\SynPSGData.OLB
dblibr -w -r %DEVROOT%\applications\lib\SynPSGData.OLB  %DEVROOT%\applications\obj\SynPSGData\SynPSGDataColumn.DBO %DEVROOT%\applications\obj\SynPSGData\SynPSGDataColumnCollection.DBO %DEVROOT%\applications\obj\SynPSGData\SynPSGDataRow.DBO %DEVROOT%\applications\obj\SynPSGData\SynPSGDataRowCollection.DBO %DEVROOT%\applications\obj\SynPSGData\SynPSGDataTable.DBO
dblink -d -l %DEVROOT%\exe\SynPSGData.ELB %DEVROOT%\applications\lib\SynPSGData.OLB

dblproto SynPSGInit.dbl
dblproto ProductTable.dbl
dblproto CustomerTable.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGExamples\SynPSGInit.DBO %DEVROOT%\applications\src\SynPSGExamples\SynPSGInit.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGExamples\ProductTable.DBO %DEVROOT%\applications\src\SynPSGExamples\ProductTable.dbl
dbl -d -TX  -o %DEVROOT%\applications\obj\SynPSGExamples\CustomerTable.DBO %DEVROOT%\applications\src\SynPSGExamples\CustomerTable.dbl
dblibr -ca %DEVROOT%\applications\lib\SynPSGExamples.OLB
dblibr -w -r %DEVROOT%\applications\lib\SynPSGExamples.OLB  %DEVROOT%\applications\obj\SynPSGExamples\SynPSGInit.DBO %DEVROOT%\applications\obj\SynPSGExamples\ProductTable.DBO %DEVROOT%\applications\obj\SynPSGExamples\CustomerTable.DBO
dblink -d -l %DEVROOT%\exe\SynPSGExamples.ELB %DEVROOT%\applications\lib\SynPSGExamples.OLB

