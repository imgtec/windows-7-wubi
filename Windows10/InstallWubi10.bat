CD /D %~DP0

IF NOT EXIST "TableTextServiceDaYi.txt" EXIT /B


TAKEOWN /F "C:\Program Files\Windows NT\TableTextService\TableTextServiceDaYi.txt" /A
icacls "C:\Program Files\Windows NT\TableTextService\TableTextServiceDaYi.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files\Windows NT\TableTextService\TableTextServiceDaYi.txt"
COPY "TableTextServiceDaYi.txt" "C:\Program Files\Windows NT\TableTextService\TableTextServiceDaYi.txt"


IF NOT %PROCESSOR_ARCHITECTURE%==AMD64 EXIT /B

TAKEOWN /F "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceDaYi.txt" /A
icacls "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceDaYi.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceDaYi.txt"
COPY "TableTextServiceDaYi.txt" "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceDaYi.txt"

PAUSE
