:: Uninstall Windows 11 Built-in Apps


@Echo Off & Color 0E


(Net session >nul 2>&1)||(PowerShell start """%~0""" -verb RunAs & Exit /B)

Cd %TMP%

:Choice

Cls 
Echo.
Echo 1. Remove all Pre-installed Apps for Current Account Only
Echo.
Echo 2. Remove all Pre-installed Apps for All Accounts
Echo.
Echo 3. Uninstall 3D Builder
Echo.
Echo 4. Uninstall Sway
Echo.
Echo 5. Uninstall Alarms and Clock
Echo.
Echo 6. Uninstall Calculator
Echo.
Echo 7. Uninstall Get Office
Echo.
Echo 8. Uninstall Calendar and Mail
Echo.
Echo 9. Uninstall Camera
Echo.
Echo 10. Uninstall Movies ^& TV
Echo.
Echo 11. Uninstall Contact Support
Echo.
Echo 12. Uninstall Groove Music and Movies ^& TV apps together
Echo.
Echo 13. Uninstall Maps
Echo.
Echo 14. Uninstall Microsoft Solitaire Collection
Echo.
Echo 15. Uninstall Money
Echo.
Echo 16. Uninstall Get Started
Echo.
Echo 17. Uninstall News
Echo.
Echo 18. Uninstall Sports
Echo.
Echo 19. Uninstall Weather
Echo.
Echo 20. Uninstall Money, News, Sports, and Weather apps together
Echo.
Echo 21. Uninstall OneNote
Echo.
Echo 22. Uninstall People
Echo.
Echo 23. Uninstall Your Phone Companiond
Echo.
Echo 24. Uninstall Photos
Echo.
Echo 25. Uninstall Microsoft Store
Echo.
Echo 26. Uninstall Voice Recorder
Echo.
Echo 27. Uninstall all Xbox App
Echo.
Echo.


Set /p input= Type a number: 

If %input%==1 Goto  :Current
If %input%==2 Goto  :All
If %input%==3 Goto  :3DBuilder
If %input%==4 Goto  :Sway
If %input%==5 Goto  :Alarms
If %input%==6 Goto  :Calculator
If %input%==7 Goto  :Office
If %input%==8 Goto  :Mail
If %input%==9 Goto  :Camera
If %input%==10 Goto :Movies
If %input%==11 Goto :ContactSupport
If %input%==12 Goto :Groove
If %input%==13 Goto :Maps
If %input%==14 Goto :Solitaire
If %input%==15 Goto :Money
If %input%==16 Goto :GetStarted
If %input%==17 Goto :News
If %input%==18 Goto :Sports
If %input%==19 Goto :Weather
If %input%==20 Goto :Together
If %input%==21 Goto :OneNote
If %input%==22 Goto :People
If %input%==23 Goto :Phone
If %input%==24 Goto :Photos
If %input%==25 Goto :Store
If %input%==26 Goto :Voice
If %input%==27 Goto :Xbox


Goto :EOF







:Current

Echo Get-AppxPackage ^| Remove-AppxPackage > Current.ps1

Powershell -ExecutionPolicy ByPass -File Current.ps1

Del Current.ps1

Goto :Choice



:All

Echo Get-AppxPackage -allusers | Remove-AppxPackage > All.ps1

Powershell -ExecutionPolicy ByPass -File All.ps1

Del All.ps1

Goto :Choice




:3DBuilder

Echo Get-AppxPackage *3DBuilder* ^| Remove-AppxPackage > 3DBuilder.ps1

Powershell -ExecutionPolicy ByPass -File 3DBuilder.ps1

Del 3DBuilder.ps1

Goto :Choice


:Sway

Echo Get-AppxPackage *sway* ^| remove-AppxPackage > sway.ps1

Powershell -ExecutionPolicy ByPass -File sway.ps1

Del sway.ps1

Goto :Choice



:Alarms

Echo Get-AppxPackage *Alarms* ^| Remove-AppxPackage > Alarms.ps1

Powershell -ExecutionPolicy ByPass -File Alarms.ps1

Del Alarms.ps1

Goto :Choice







:Calculator

Echo Get-AppxPackage *Calculator* ^| Remove-AppxPackage > Calculator.ps1

Powershell -ExecutionPolicy ByPass -File Calculator.ps1

Del Calculator.ps1

Goto :Choice





:Office

Echo Get-AppxPackage *MicrosoftOfficeHub* ^| Remove-AppxPackage > Office.ps1

Powershell -ExecutionPolicy ByPass -File Office.ps1

Del Office.ps1

Goto :Choice



:Mail

Echo Get-AppxPackage *communicationsapps* ^| Remove-AppxPackage > Communications.ps1

Powershell -ExecutionPolicy ByPass -File Communications.ps1

Del Communications.ps1

Goto :Choice







:Camera

Echo Get-AppxPackage *WindowsCamera* ^| Remove-AppxPackage > Camera.ps1

Powershell -ExecutionPolicy ByPass -File Camera.ps1

Del Camera.ps1

Goto :Choice




:ZuneVideo


Echo Get-AppxPackage *ZuneVideo* ^| Remove-AppxPackage > ZuneVideo.ps1

Powershell -ExecutionPolicy ByPass -File ZuneVideo.ps1

Del ZuneVideo.ps1

Goto :Choice







:ContactSupport

Echo Get-AppxPackage *ContactSupport* ^| Remove-AppxPackage > ContactSupport.ps1

Powershell -ExecutionPolicy ByPass -File ContactSupport.ps1

Del ContactSupport.ps1

Goto :Choice







:Groove

Echo Get-AppxPackage  *zune* |  Remove-AppxPackage > zune.ps1

Powershell -ExecutionPolicy ByPass -File zune.ps1

Del zune.ps1

Goto :Choice




:Maps

Echo Get-AppxPackage *Maps* ^| Remove-AppxPackage > Maps.ps1

Powershell -ExecutionPolicy ByPass -File Maps.ps1

Del Maps.ps1

Goto :Choice




:Solitaire


Echo Get-AppxPackage *Solitaire* ^| Remove-AppxPackage > Solitaire.ps1

Powershell -ExecutionPolicy ByPass -File Solitaire.ps1

Del Solitaire.ps1

Goto :Choice



:Money

Echo Get-AppxPackage *bingfinance* ^| Remove-AppxPackage > bingfinance.ps1

Powershell -ExecutionPolicy ByPass -File bingfinance.ps1

Del bingfinance.ps1

Goto :Choice




:GetStarted

Echo Get-AppxPackage *GetStarted* ^| Remove-AppxPackage > GetStarted.ps1

Powershell -ExecutionPolicy ByPass -File GetStarted.ps1

Del GetStarted.ps1

Goto :Choice




:News

Echo Get-AppxPackage *bingnews* ^| Remove-AppxPackage > bingnews.ps1

Powershell -ExecutionPolicy ByPass -File bingnews.ps1

Del bingnews.ps1

Goto :Choice







:Sports

Echo Get-AppxPackage *bingsports* ^| Remove-AppxPackage > bingsports.ps1

Powershell -ExecutionPolicy ByPass -File bingsports.ps1

Del bingsports.ps1

Goto :Choice





:Weather

Echo Get-AppxPackage *bingweather* ^| Remove-AppxPackage > bingweather.ps1

Powershell -ExecutionPolicy ByPass -File bingweather.ps1

Del bingweather.ps1

Goto :Choice




:Together

Echo et-Appxpackage *bing* ^| Remove-AppxPackage > bing.ps1

Powershell -ExecutionPolicy ByPass -File bing.ps1

Del bing.ps1

Goto :Choice






:OneNote

Echo Get-AppxPackage *OneNote* ^| Remove-AppxPackage > OneNote.ps1

Powershell -ExecutionPolicy ByPass -File OneNote.ps1

Del OneNote.ps1

Goto :Choice



:People

Echo Get-AppxPackage *People* ^| Remove-AppxPackage > People.ps1

Powershell -ExecutionPolicy ByPass -File People.ps1

Del People.ps1

Goto :Choice




:YourPhone

Echo Get-AppxPackage *YourPhone* ^| Remove-AppxPackage > YourPhone.ps1

Powershell -ExecutionPolicy ByPass -File YourPhone.ps1

Del YourPhone.ps1

Goto :Choice




:Photos

Echo Get-AppxPackage *Photos* ^| Remove-AppxPackage > Photos.ps1

Powershell -ExecutionPolicy ByPass -File Photos.ps1

Del Photos.ps1

Goto :Choice




:Store

Echo Get-AppxPackage *WindowsStore* ^| Remove-AppxPackage > Store.ps1

Powershell -ExecutionPolicy ByPass -File Store.ps1

Del Store.ps1

Goto :Choice





:Voice

Echo Get-AppxPackage *soundrecorder* ^| Remove-AppxPackage > soundrecorder.ps1

Powershell -ExecutionPolicy ByPass -File soundrecorder.ps1

Del soundrecorder.ps1

Goto :Choice






:XboxApp

Echo Get-AppxPackage *Xbox* ^| Remove-AppxPackage > XboxApp.ps1

Powershell -ExecutionPolicy ByPass -File XboxApp.ps1

Del XboxApp.ps1

Goto :Choice






























