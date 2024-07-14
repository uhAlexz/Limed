@echo off
chcp 65001
title Limed ~ v1.0 - By: LimeDEVs
color A
:menu
cls

echo                                           ________________________________________
echo                                            ██╗░░░░░██╗███╗░░░███╗███████╗██████╗░
echo                                            ██║░░░░░██║████╗░████║██╔════╝██╔══██╗
echo                                            ██║░░░░░██║██╔████╔██║█████╗░░██║░░██║
echo                                            ██║░░░░░██║██║╚██╔╝██║██╔══╝░░██║░░██║
echo                                            ███████╗██║██║░╚═╝░██║███████╗██████╔╝
echo                                            ╚══════╝╚═╝╚═╝░░░░░╚═╝╚══════╝╚═════╝░
echo                                            ________________________________________

echo                                                         q. = Exit
echo                                                 !version = Version of Spammer
echo                                                   !spam. = Webhook Spammer
echo                                                 !roblox = Discord to Roblox
echo                                            ________________________________________

set /p choice=Enter Your Choice:

if "%choice%"=="q" goto :eof
if "%choice%"=="!spam" goto webhookspammer
if "%choice%"=="!version" goto version
if "%choice%"=="!roblox" goto roblox
goto menu

:webhookspammer
cls
echo ____________________________________
echo 0        WEBHOOK SPAMMER            0
echo 0___________________________________0
set /p "webhook=│ Enter Discord webhook URL for Webhook Spmmer: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto menu

:roblox
cls
echo ____________________________________
echo 0         ROBLOX GRABBER            0
echo 0___________________________________0

echo This is provided by BloxLink and this is our own API key!
echo Please do not spam this request or you will be blocked.
set /p "discord=| Enter Discord ID of user: "
curl -H haha use your own :)

echo .

pause
goto menu

:version
cls
echo                                           ________________________________________
echo                                            ██╗░░░░░██╗███╗░░░███╗███████╗██████╗░
echo                                            ██║░░░░░██║████╗░████║██╔════╝██╔══██╗
echo                                            ██║░░░░░██║██╔████╔██║█████╗░░██║░░██║
echo                                            ██║░░░░░██║██║╚██╔╝██║██╔══╝░░██║░░██║
echo                                            ███████╗██║██║░╚═╝░██║███████╗██████╔╝
echo                                            ╚══════╝╚═╝╚═╝░░░░░╚═╝╚══════╝╚═════╝░
echo                                            ________________________________________
echo                                                Version 1.0 ~ Made by: LimeDEVs
echo                                                    Need Support: None ATM
echo                                            ________________________________________
pause
goto menu
