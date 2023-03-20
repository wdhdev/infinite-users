@echo off

:init
 setlocal DisableDelayedExpansion
 set cmdInvoke=1
 set winSysFolder=System32
 set "batchPath=%~0"
 for %%k in (%0) do set batchName=%%~nk
 set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
 setlocal EnableDelayedExpansion

:checkPrivileges
  NET FILE 1>NUL 2>NUL
  if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
  if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)

  ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
  ECHO args = "ELEV " >> "%vbsGetPrivileges%"
  ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
  ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
  ECHO Next >> "%vbsGetPrivileges%"

  if '%cmdInvoke%'=='1' goto InvokeCmd 

  ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
  goto ExecElevation

:InvokeCmd
  ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
  ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"

:ExecElevation
 "%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
 exit /B

:gotPrivileges
 setlocal & cd /d %~dp0
 if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

net user /delete User001
net user /delete User002
net user /delete User003
net user /delete User004
net user /delete User005
net user /delete User006
net user /delete User007
net user /delete User008
net user /delete User009
net user /delete User010
net user /delete User011
net user /delete User012
net user /delete User013
net user /delete User014
net user /delete User015
net user /delete User016
net user /delete User017
net user /delete User018
net user /delete User019
net user /delete User020
net user /delete User021
net user /delete User022
net user /delete User023
net user /delete User024
net user /delete User025
net user /delete User026
net user /delete User027
net user /delete User028
net user /delete User029
net user /delete User030
net user /delete User031
net user /delete User032
net user /delete User033
net user /delete User034
net user /delete User035
net user /delete User036
net user /delete User037
net user /delete User038
net user /delete User039
net user /delete User040
net user /delete User041
net user /delete User042
net user /delete User043
net user /delete User044
net user /delete User045
net user /delete User046
net user /delete User047
net user /delete User048
net user /delete User049
net user /delete User050
net user /delete User051
net user /delete User052
net user /delete User053
net user /delete User054
net user /delete User055
net user /delete User056
net user /delete User057
net user /delete User058
net user /delete User059
net user /delete User060
net user /delete User061
net user /delete User062
net user /delete User063
net user /delete User064
net user /delete User065
net user /delete User066
net user /delete User067
net user /delete User068
net user /delete User069
net user /delete User070
net user /delete User071
net user /delete User072
net user /delete User073
net user /delete User074
net user /delete User075
net user /delete User076
net user /delete User077
net user /delete User078
net user /delete User079
net user /delete User080
net user /delete User081
net user /delete User082
net user /delete User083
net user /delete User084
net user /delete User085
net user /delete User086
net user /delete User087
net user /delete User088
net user /delete User089
net user /delete User090
net user /delete User091
net user /delete User092
net user /delete User093
net user /delete User094
net user /delete User095
net user /delete User096
net user /delete User097
net user /delete User098
net user /delete User099
net user /delete User100

exit
