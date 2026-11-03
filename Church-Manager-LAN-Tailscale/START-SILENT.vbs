Set sh=CreateObject("WScript.Shell")
sh.CurrentDirectory=Replace(WScript.ScriptFullName,"\START-SILENT.vbs","")
sh.Run "cmd /c START-CHURCH-MANAGER.bat",0,False
