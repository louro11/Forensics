@echo off
setlocal enabledelayedexpansion

REM CREATE A DIRECTORY BASED ON THE CURRENT TIMESTAMP

REM Get current date and time
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set datetime=%%a

REM Get hostname
for /f "delims=" %%a in ('hostname') do set hostname=%%a


REM Format the date and time
set year=!datetime:~0,4!
set month=!datetime:~4,2!
set day=!datetime:~6,2!
set hour=!datetime:~8,2!
set minute=!datetime:~10,2!
set second=!datetime:~12,2!

REM Create directory with timestamp name
set timestamp=%year%_%month%_%day%_%hour%_%minute%_%second%
set filename=%hostname%_system_information.txt
mkdir "%timestamp%"
cd "%timestamp%"


REM COLLECT SYSTEM INFORMATION

ECHO SYSTEM DATE AND TIME >> %filename%
ECHO COMMAND: ECHO DATE TIME >> %filename%
ECHO RESULT: >> %filename%
ECHO %DATE% %TIME% >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%


ECHO SYSTEM INFORMATION >> %filename%
ECHO COMMAND: SYSTEMINFO >> %filename%
ECHO RESULT: >> %filename%
SYSTEMINFO >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%


ECHO SYSTEM VERSION >> %filename%
ECHO COMMAND: VER >> %filename%
ECHO RESULT: >> %filename%
VER >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%

ECHO CURRENT USER >> %filename%
ECHO COMMAND: WHOAMI >> %filename%
ECHO RESULT: >> %filename%
WHOAMI >> %filename%
ECHO - >> %filename%

ECHO CURRENT USER PRIVILEGES >> %filename%
ECHO COMMAND: WHOAMI /PRIV >> %filename%
ECHO RESULT: >> %filename%
WHOAMI >> %filename%
ECHO - >> %filename%

ECHO SYSTEM USERS >> %filename%
ECHO COMMAND: NET USERS >> %filename%
ECHO RESULT: >> %filename%
NET USERS >> %filename%
ECHO - >> %filename%
ECHO GROUPS >> %filename%
ECHO COMMAND: NET LOCALGROUP >> %filename%
ECHO RESULT: >> %filename%
NET LOCALGROUP >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%

ECHO SYSTEM PATH >> %filename%
ECHO COMMAND: PATH >> %filename%
ECHO RESULT: >> %filename%
PATH >> %filename%
ECHO  >> %filename%
ECHO - >> %filename%


ECHO SYSTEM VARIABLES >> %filename%
ECHO COMMAND: VARIABLES >> %filename%
ECHO RESULT: >> %filename%
SET >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%


ECHO NETWORK INFORMATION >> %filename%
ECHO - >> %filename%
ECHO IP CONFIGURATION >> %filename%
ECHO COMMAND: IPCONFIG /ALL>> %filename%
ECHO RESULT: >> %filename%
IPCONFIG /ALL >> %filename%
ECHO - >> %filename%
ECHO NETWORK CONNECTIONS >> %filename%
ECHO COMMAND: NETSTAT -AN >> %filename%
ECHO RESULT: >> %filename%
NETSTAT -AN >> %filename%
ECHO - >> %filename%
ECHO ARP TABLE >> %filename%
ECHO COMMAND: ARP -A >> %filename%
ECHO RESULT: >> %filename%
ARP -A >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%



ECHO PROCESS INFORMATION >> %filename%
ECHO - >> %filename%
ECHO ACTIVE PROCESSES >> %filename%
ECHO COMMAND: TASKLIST>> %filename%
ECHO RESULT: >> %filename%
TASKLIST >> %filename%
ECHO - >> %filename%
ECHO SCHEDULED TASKS >> %filename%
ECHO COMMAND: SCHTASKS >> %filename%
ECHO RESULT: >> %filename%
SCHTASKS >> %filename%
ECHO - >> %filename%
ECHO - >> %filename%