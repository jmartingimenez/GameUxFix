@echo off
Title Game Explorer fixer by Ubeogesh
Color 02
if exist %windir%\syswow64\nul (set wd=syswow64) else (set wd=system32)
Echo.
Echo            Game explorer problem AKA 
Echo           "games don't start and rundll32.exe uses 50% cpu" problem
Echo            Fixer
Echo.
Echo                  Script provided by:
Echo.
Echo      /s    :y`
Echo     -M/   `Ns  /Nooodm` omoooo+ odooooNs .dyoooyh  ydoooo/ +doooho  hh   .N-
Echo    `my    hd  .NyooyM: -Msoo`  /N-   +N` hh -oym- /Nso+   `soooym` +NooooNy
Echo    :dsssssy.  shoooyo  yhoooo. yhooooh- -dsoooy+ `hyoooo` hsoooy: .d:   /h`
Echo.
Echo ===============================================================================
Echo ==                                                                           ==
if not exist %windir%\%wd%\gameux.dll goto RestoreGameUX

:FixGameUX
Echo ==   The script will resolve your Game Explorer aka Rundll32.exe problem.    ==
Echo ==   Game explorer will work but some functionality may become unavailable   ==
Echo ==   Press any key to fix or close the window if you're not sure             ==
Echo ==                                                                           ==
Echo ==   You may run the script again to restore...                              ==
Echo ==                                                                           ==
Echo ===============================================================================

Pause >nul
Echo.
takeown /f %windir%\%wd%\gameux.dll >nul
IF %ERRORLEVEL% EQU 0 Echo      Ownership taken...
Echo.
cacls %windir%\%wd%\gameux.dll /E /P %username%:F >nul
IF %ERRORLEVEL% EQU 0 Echo      premissions gained...
Echo.
ren %windir%\%wd%\gameux.dll gameux.dll.Ubeogesh >nul
IF %ERRORLEVEL% EQU 0 Echo      File renamed! Congratz! Games will now launch!
GOTO End

:RestoreGameUX
Echo ==   Press any key to restore Game Explorer (unfix)                          ==
Echo ==                                                                           ==
Echo ===============================================================================
pause >nul
Echo.
ren %windir%\%wd%\gameux.dll.Ubeogesh gameux.dll
IF %ERRORLEVEL% EQU 0 (
	Echo      gameux.dll restored!
	GOTO End) ELSE (
Echo.
Echo Could not restore... have you deleted the file or changed permissions?
Echo And look at the error above ^;-^))

:End
Echo.
Echo      http://ubeogesh-things.blogspot.com/
Echo.
Echo      Press any key to exit
Pause >nul

::please credit Ubeogesh when redistributing the script