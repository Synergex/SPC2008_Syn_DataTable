IF EXIST "TableDemo.dll" del "TableDemo.dll"
IF NOT EXIST "TableDemo.snk" sn -k "TableDemo.snk"
if '%1' == '-p' goto pooling
csc /nologo /target:library /out:"TableDemo.dll" /reference:"%XFNLNET%\xfnlnet.dll" /optimize /keyfile:"TableDemo.snk" %SYNCSCOPT% @TableDemo.rsp
goto done
:pooling
csc /nologo /target:library /define:POOLING /out:"TableDemo.dll" /reference:"%XFNLNET%\xfnlnet.dll" /optimize /keyfile:"TableDemo.snk" %SYNCSCOPT% @TableDemo.rsp
:done
