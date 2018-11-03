echo Script d'optimisation Windows 7


echo Modification du Regedit

echo Optimisation du demarrage

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\Microsoft\Dfrg\BootOptimizeFunction" /V OptimizeComplete /T REG_SZ /D No /F


echo Force l'arret des programmes et services recalcitrants

REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V WaitToKillAppTimeout /T REG_SZ /D 1000 /F
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V HungAppTimeout /T REG_SZ /D 1000 /F
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V AutoEndTasks /T REG_SZ /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /V WaitToKillServiceTimeout /T REG_SZ /D 1000 /F


echo Exploite toute la memoire vive

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V AlwaysUnloadDll /T REG_DWORD /D 1 /F


echo Desactive la pagination

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /V DisablePagingExecutive /T REG_DWORD /D 1 /F


echo Augmente la memoire tampon

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management /V IoPageLockLimit /T REG_DWORD /D f0000 /F


echo Desactive le rapport d'erreurs

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /V DoReport /D 0 /F


echo Desactive TCP / IP / Large Send Offload

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /V DisableTaskOffload /D 1 /F


echo Desactive la restauration système

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "DisableSR" /D 1 /F


echo Desactive les vidages memoire (panne système, BSOD)

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /V "CrashDumpEnabled" /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /V "LogEvent" /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /V "SendAlert" /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /V "AutoReboot" /D 1 /F


echo Desactive l'economiseur d'ecran système par defaut

REG ADD "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /V "ScreenSaveActive" /D 0 /F


echo Reduit le temps de fermeture des services

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /V "ServicesPipeTimeout" /D 180000 /F


echo Reduit le temps d'extinction et d'allumage du disque dur

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Disk" /V "TimeOutValue" /D 200 /F


echo Regle le mode d'erreur PopUp sur "Jamais"

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Windows" /V "ErrorMode" /D 2 /F


echo Desactive l'invite de bureau securise UAC

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /V "PromptOnSecureDesktop" /D 0 /F


echo Desactive le service Superfetch

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /V "EnableSuperfetch" /D 0 /F


echo Automatisez en creant les contrôles reg correspondant à "cleanmgr / sageset: 100" afin de pouvoir utiliser "sagerun: 100"

REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /V "StateFlags0100" /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /V "StateFlags0100" /D 0 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files" /V "StateFlags0100" /D 2 /F
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /V "StateFlags0100" /D 2 /F


echo Reduit le delai d'affichage du menu

REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V "MenuShowDelay" /D 0 /F


echo Desactive le clignotement du curseur

REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V "CursorBlinkRate" /D -1 /F
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /V "DisableCursorBlink" /D 1 /F


echo Desactive les economiseurs d'ecran

REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /V "ScreenSaveActive" /D 0 /F
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\" /V "ScreenSaveActive" /D 0 /F
REG ADD "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /V "ScreenSaveActive" /D 0 /F


echo Desactive le cache persistant IE

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache" /V "Persistent" /D 0 /F
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Feeds" /V "SyncStatus" /D 0 /F


echo Desactive les modifications du mot de passe du compte machine

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /V "DisablePasswordChange" /D 1 /F


echo Modification par le CMD


echo Optimisation NTFS

fsutil behavior set disablelastaccess 1
fsutil behavior set disable8dot3 1


echo Configuration des options d’alimentation


echo Performances elevees

set HIGHPERFORMANCE=8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c


echo Ne jamais desactiver le delai d'ecoute du moniteur

powercfg -change -monitor-timeout-ac 0


echo Desactive le debogage de demarrage

bcdedit /bootdebug off
bcdedit /debug off


echo Desactive le journal de demarrage

bcdedit /set bootlog no


echo Desactive l'animation de l'ecran de demarrage

bcdedit /set bootux disabled
bcdedit /set quietboot on


echo Nettoyage du disque C:

cleanmgr.exe /sagerun:100
