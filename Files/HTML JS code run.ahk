;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; HTML JS code run
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
IniRead, HTML_JS, %IniFilePath%, Hotkeys, HTML_JS
; Define hotkey actions using the assigned hotkey definitions
HTML_JS := Trim(HTML_JS)
Hotkey, %HTML_JS%, runHTMLjs
return

runHTMLjs:
Run runHTML JS.ahk
Return