@ECHO OFF                                        
ECHO.
ECHO     This script will Completely remove the ConnectWise Agent. Please do not
ECHO     run this script from within a ConnectWise session as you may not be
ECHO     able to regain access to the computer!
ECHO.
ECHO     Paul Rowland - 2022
ECHO.
ECHO     v1.0 - 27/06/2022
ECHO.

fsutil dirty query %SYSTEMDRIVE% >nul
if %ERRORLEVEL% == 0 (

    cls

    taskkill /im ltservice* /f
    taskkill /im lttray* /f
    taskkill /im ltsvcmon* /f

    net stop ltservice
    net stop ltsvcmon
    sc delete ltservice
    sc delete ltsvcmon

    reg delete HKEY_CLASSES_ROOT\Installer\Products\2E8B9D9E5155D74499659093C75B7F43 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\2E8B9D9E5155D74499659093C75B7F43 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\LabTech /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\AppMgmt\{a34e1e28-a13c-4a39-ada2-7d34c7624112} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\10A0B361F2045184E851DF5F4F4B0C38 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\15D51BB10C80DB146A1412A369876F27 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\0181A513923CAB34F872E248762879EE /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\10A0B361F2045184E851DF5F4F4B0C38 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\15D51BB10C80DB146A1412A369876F27 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\16FD9DAC629090B4BA238A0D53D279BA /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\4C03C283B0D8D5948B2290E32532B3A1 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\5A053F4002822FD40AEDEB3E8A9BEA70 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\5D059898C42FF824CBC129978B02F97B /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\8A6190A6EEEF9CF4FA0BFE98E36A8B01 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\8A67A5EC772240245804DCD8837490C2 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\8D6F2EBE5A8AB8E4291A4296644B5E3F /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\AFAAFDBE93CB2064B855601F6BA44E48 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\C730A1128C34C4E4EB3F95D65E262AE0 /f

    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\2E8B9D9E5155D74499659093C75B7F43 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{E9D9B8E2-5515-447D-9956-09397CB5F734} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{09DF1DCA-C076-498A-8370-AD6F878B6C6A} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{15DD3BF6-5A11-4407-8399-A19AC10C65D0} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{3C198C98-0E27-40E4-972C-FDC656EC30D7} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{459C65ED-AA9C-4CF1-9A24-7685505F919A} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{7BE3886B-0C12-4D87-AC0B-09A5CE4E6BD6} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{7E092B5C-795B-46BC-886A-DFFBBBC9A117} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{9D101D9C-18CC-4E78-8D78-389E48478FCA} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{B0B8CDD6-8AAA-4426-82E9-9455140124A1} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{B1B00A43-7A54-4A0F-B35D-B4334811FAA4} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{BBC521C8-2792-43FE-9C91-CCA7E8ACBCC9} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{C59A1D54-8CD7-4795-AEDD-F6F6E2DE1FE7} /f
    reg delete HKEY_CLASSES_ROOT\CLSID\{C59A1D54-8CD7-4795-AEDD-F6F6E2DE1FE7} /f
    reg delete HKEY_CLASSES_ROOT\TypeLib\{26818C76-2CAC-4C7E-9704-E3A037D4F3DB} /f
    reg delete HKEY_CLASSES_ROOT\TypeLib\{26D19E41-819E-11D3-8D49-00C04F949D33} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{09DF1DCA-C076-498A-8370-AD6F878B6C6A} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{15DD3BF6-5A11-4407-8399-A19AC10C65D0} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{3C198C98-0E27-40E4-972C-FDC656EC30D7} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{459C65ED-AA9C-4CF1-9A24-7685505F919A} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{7BE3886B-0C12-4D87-AC0B-09A5CE4E6BD6} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{7BE3886B-0C12-4D87-AC0B-09A5CE4E6BD6} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{7E092B5C-795B-46BC-886A-DFFBBBC9A117} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{9D101D9C-18CC-4E78-8D78-389E48478FCA} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B0B8CDD6-8AAA-4426-82E9-9455140124A1} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B1B00A43-7A54-4A0F-B35D-B4334811FAA4} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{BBC521C8-2792-43FE-9C91-CCA7E8ACBCC9} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{C59A1D54-8CD7-4795-AEDD-F6F6E2DE1FE7} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\TypeLib\{26818C76-2CAC-4C7E-9704-E3A037D4F3DB} /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\10A0B361F2045184E851DF5F4F4B0C38 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\6804DD6820C9D1E4C98B1F36ABC8DB40 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\73DC89EFFC0EDA241ADBE3DC920C57D8 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\7EC042797B3660747800B37559D5E3FA /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\C2F99EC6FE42F7F40BEF0D971CD23C96 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\E58CF654B48C23F4E9B95F1ECF396CA7 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\F9789CC06AE0B594EB90EAB8FA54A32B /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\FFCE70940C823D44EBC731119863CB28 /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{E9D9B8E2-5515-447D-9956-09397CB5F734} /f
    reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog\Application\LTSvcMon /f
    reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog\Application\tvnserver /f
    reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LTService /f
    reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LTSvcMon /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run  LabTech Tray Icon  /f
    reg delete HKEY_CURRENT_USER\Software\LabTech /f
    reg delete HKEY_CURRENT_USER\Software\Microsoft\Installer\Products\C4D064F3712D4B64086B5BDE05DBC75F /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-21-3287850859-3326144799-3551756217-1742\Products\C4D064F3712D4B64086B5BDE05DBC75F /f
    reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3F460D4C-D217-46B4-80B6-B5ED50BD7CF5} /f
    reg delete HKEY_CLASSES_ROOT\Installer\Products\D1003A85576B76D45A1AF09A0FC87FAC /f

    takeown /F C:\Windows\LTSvc /R
    takeown /F C:\ProgramData\Labtech /R

    del C:\Windows\LTSVC /S /F /Q
    del C:\ProgramData\Labtech /S /F /Q

    cls

    ECHO.
    ECHO     ConnectWise has been removed from this machine.
    ECHO.
    ping -n 4 127.0.0.1>NUL

) ELSE (

    explorer .
    set loop = 0
    :errorLoop
    cls
    ECHO.
    ping -n 2 127.0.0.1>NUL
    cls
    ECHO.
    ECHO     !-- Please ensure this script is run as an Administrator --!
    ECHO.
    ping -n 2 127.0.0.1>NUL
    set /a loop=%loop%+1 
    if "%loop%"=="5" goto confirm
    goto errorLoop

    :confirm
    ECHO.

    pause

)