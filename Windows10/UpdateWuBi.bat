CD /D %~DP0

SET SRC="TableTextServiceWuBi.txt"

SET DST="C:\Program Files\Windows NT\TableTextService\TableTextServiceWuBi.txt"
SET DST86="C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceWuBi.txt"
SET PROG="C:\Program Files\Windows NT\TableTextService\TableTextService.dll"
SET PROG86="C:\Program Files (x86)\Windows NT\TableTextService\TableTextService.dll"

IF NOT EXIST %SRC% EXIT /B

SET ACTION="DEFAULT"
IF NOT EXIST %DST% GOTO FILECP
SET ACTION="UPDATE"
TAKEOWN /F %DST% /A
icacls %DST% /grant %USERNAME%:(D,WDAC)
DEL %DST%

:FILECP
COPY %SRC% %DST%
IF %ACTION%=="DEFAULT" Rundll32 %PROG% RegisterProfile %DST%

IF NOT %PROCESSOR_ARCHITECTURE%==AMD64 EXIT /B


SET DST=%DST86%
SET PROG=%PROG86%

SET ACTION="DEFAULT"
IF NOT EXIST %DST% GOTO FILECP86
SET ACTION="UPDATE"
TAKEOWN /F %DST% /A
icacls %DST% /grant %USERNAME%:(D,WDAC)
DEL %DST%

:FILECP86
COPY %SRC% %DST%
IF %ACTION%=="DEFAULT" Rundll32 %PROG% RegisterProfile %DST%

PAUSE
