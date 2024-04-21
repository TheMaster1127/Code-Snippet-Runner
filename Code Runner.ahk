;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; Code Runner
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;

if !(FileExist("Files\Python"))
{
FileCreateDir, Files\Python
}
if !(FileExist("Files\HTML JS"))
{
FileCreateDir, Files\HTML JS
}
if !(FileExist("Files\HTH test"))
{
FileCreateDir, Files\HTH test
}
if !(FileExist("Files\AutoHotKey"))
{
FileCreateDir, Files\AutoHotKey
}

; Specify the path to the INI file
IniFilePath := A_ScriptDir . "\settings.ini"
FileDelete, Files\IniFilePath.txt
FileAppend, %IniFilePath%, Files\IniFilePath.txt

Run, Files\AutoHotKey code run.ahk
Run, Files\Run HTH code.ahk
Run, Files\HTML JS code run.ahk
Run, Files\Start Python Testing.ahk