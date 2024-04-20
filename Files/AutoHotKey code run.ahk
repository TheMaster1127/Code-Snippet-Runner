;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; AutoHotKey code run
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;

FileRead, IniFilePath, IniFilePath.txt

; Read and assign hotkey definitions from the INI file
IniRead, AutoHotKey, %IniFilePath%, Hotkeys, AutoHotKey
; Define hotkey actions using the assigned hotkey definitions
AutoHotKey := Trim(AutoHotKey)
Hotkey, %AutoHotKey%, runAutoHotkey
return

runAutoHotkey:
Run, Run AHK.ahk
Return