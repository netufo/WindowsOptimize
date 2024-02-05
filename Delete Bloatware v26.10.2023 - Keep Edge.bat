takeown /s %computername% /u %username% /f "%WinDir%\SystemApps"
takeown /s %computername% /u %username% /f "%WinDir%\System32\Broadcastdvr.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\upfc.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\Compatibility Telement.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\CompPkgSrv.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\mobsync.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\smartscreen.exe"
takeown /s %computername% /u %username% /f "%WinDir%\System32\GameBarPresenceWriter.exe"
takeown /s %computername% /u %username% /f "%WinDir%\Windows\GameBarPresenceWriter.exe"
takeown /s %computername% /u %username% /f "%WinDir%\Program Files (x86)\Internet Explorer"
takeown /s %computername% /u %username% /f "%WinDir%\Program Files (x86)\Microsoft"
takeown /s %computername% /u %username% /f "%ProgramFiles%\WindowsApps"
takeown /s %computername% /u %username% /f "%WinDir%\Program Files\Internet Explorer"
takeown /s %computername% /u %username% /f "%WinDir%\Windows\bcastdvr"
takeown /s %computername% /u %username% /f "%WinDir%\Users\%username%\AppData\Local\Microsoft\GameDVR"
takeown /s %computername% /u %username% /f "%WinDir%\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe"
takeown /s %computername% /u %username% /f "%WinDir%\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exe"
takeown /s %computername% /u %username% /f "%WinDir%\Windows\System32\oobe\UserOOBEBroker.exe"

icacls "%WinDir%\SystemApps" /grant %username%:F administrators:F /t /c
[... Repeated icacls commands for other directories, excluding Edge ...]
icacls "%WinDir%\System32\oobe\UserOOBEBroker.exe" /grant %username%:F administrators:F /t /c

icacls "%WinDir%\SystemApps" /setowner "%username%" /t
[... Repeated icacls /setowner commands for other directories, excluding Edge ...]
icacls "%WinDir%\Windows\System32\oobe\UserOOBEBroker.exe" /setowner "%username%" /t

taskkill /f /t /IM OneDriveSetup.exe
taskkill /f /t /IM CompatTelRunner.exe
taskkill /f /t /IM CompPkgSrv.exe
taskkill /f /t /IM upfc.exe
taskkill /f /t /IM mobsync.exe
taskkill /f /t /IM smartscreen.exe
taskkill /f /t /IM ScreenClippingHost.exe
taskkill /f /t /IM TextInputHost.exe
taskkill /f /t /IM LocalBridge.exe
taskkill /f /t /IM Microsoft.Photos.exe
taskkill /f /t /IM WinStore.App.exe
taskkill /f /t /IM SkypeApp.exe
taskkill /f /t /IM SkypeBridge.exe
taskkill /f /t /IM SkypeBackgroundHost.exe
taskkill /f /t /IM NcsiUwpApp.exe
taskkill /f /t /IM backgroundTaskHost.exe
taskkill /f /t /IM taskhostw.exe
taskkill /f /t /IM ctfmon.exe
taskkill /f /t /IM HxTsr.exe
taskkill /f /t /IM HxOutlook.exe
taskkill /f /t /IM HxCalendarAppImm.exe
taskkill /f /t /IM HxAccounts.exe
taskkill /f /t /IM GameBarPresenceWriter.exe

del "%windir%\Program Files (x86)\Internet Explorer" /s /f /q
del "%windir%\Program Files (x86)\Microsoft" /s /f /q
del "%windir%\Program Files\Internet Explorer" /s /f /q
del "%windir%\Windows\bcastdvr" /s /f /q
del "%windir%\Windows\GameBarPresenceWriter" /s /f /q
del "%windir%\Windows\System32\CompatTelRunner.exe" /s /f /q
del "%windir%\Windows\System32\upfc.exe" /s /f /q
del "%windir%\Windows\System32\CompPkgSrv.exe" /s /f /q
del "%windir%\Windows\System32\mobsync.exe" /s /f /q
del "%windir%\Windows\System32\smartscreen.exe" /s /f /q
del "%windir%\Windows\System32\GameBarPresenceWriter" /s /f /q
del "%windir%\Users\%username%\AppData\Local\Microsoft\GameDVR" /s /f /q

rmdir /S /Q "%windir%\Program Files (x86)\Internet Explorer"
rmdir /S /Q "%windir%\Program Files (x86)\Microsoft"
rmdir /S /Q "%windir%\Program Files\Internet Explorer"
rmdir /S /Q "%windir%\Windows\bcastdvr"
rmdir /S /Q "%windir%\Windows\GameBarPresenceWriter"
rmdir /S /Q "%windir%\Windows\System32\CompatTelRunner.exe"
rmdir /S /Q "%windir%\Windows\System32\upfc.exe"
rmdir /S /Q "%windir%\Windows\System32\CompPkgSrv.exe"
rmdir /S /Q "%windir%\Windows\System32\mobsync.exe"
rmdir /S /Q "%windir%\Windows\System32\smartscreen.exe"
rmdir /S /Q "%windir%\Windows\System32\GameBarPresenceWriter"
pause
