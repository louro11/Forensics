
@ECHO OFF
SET D= DATE /T
SET T= %TIME%
SET temp=%DATE:/=%
SET DIR="%temp:~8,4%%temp:~6,2%%temp:~4,2%"

MD %DATE:/=%
CD %DATE:/=%

ECHO SYSTEM DATE AND TIME >> triage_results.txt
ECHO COMMAND: ECHO DATE TIME >> triage_results.txt
ECHO RESULT: >> triage_results.txt
ECHO %DATE% %TIME% >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt


ECHO SYSTEM INFORMATION >> triage_results.txt
ECHO COMMAND: SYSTEMINFO >> triage_results.txt
ECHO RESULT: >> triage_results.txt
SYSTEMINFO >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt


ECHO SYSTEM VERSION >> triage_results.txt
ECHO COMMAND: VER >> triage_results.txt
ECHO RESULT: >> triage_results.txt
VER >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt

ECHO SYSTEM PATH >> triage_results.txt
ECHO COMMAND: PATH >> triage_results.txt
ECHO RESULT: >> triage_results.txt
PATH >> triage_results.txt
ECHO  >> triage_results.txt
ECHO - >> triage_results.txt


ECHO SYSTEM VARIABLES >> triage_results.txt
ECHO COMMAND: VARIABLES >> triage_results.txt
ECHO RESULT: >> triage_results.txt
SET >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt


ECHO NETWORK INFORMATION >> triage_results.txt
ECHO - >> triage_results.txt
ECHO IP CONFIGURATION >> triage_results.txt
ECHO COMMAND: IPCONFIG /ALL>> triage_results.txt
ECHO RESULT: >> triage_results.txt
IPCONFIG /ALL >> triage_results.txt
ECHO - >> triage_results.txt
ECHO NETWORK CONNECTIONS >> triage_results.txt
ECHO COMMAND: NETSTAT -AN >> triage_results.txt
ECHO RESULT: >> triage_results.txt
NETSTAT -AN >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt



ECHO PROCESS INFORMATION >> triage_results.txt
ECHO - >> triage_results.txt
ECHO ACTIVE PROCESSES >> triage_results.txt
ECHO COMMAND: TASKLIST>> triage_results.txt
ECHO RESULT: >> triage_results.txt
TASKLIST >> triage_results.txt
ECHO - >> triage_results.txt
ECHO SCHEDULED TASKS >> triage_results.txt
ECHO COMMAND: SCHTASKS >> triage_results.txt
ECHO RESULT: >> triage_results.txt
SCHTASKS >> triage_results.txt
ECHO - >> triage_results.txt
ECHO - >> triage_results.txt