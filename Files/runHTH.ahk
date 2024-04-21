;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; runHTH
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;

Gui, Color, 121212
Gui, Font, s13
Gui, Add, Text, cWhite x10 y10, Test HTH
Gui, Font, s9
Gui, Add, Edit, x10 y40 w650 h600 vEdit1,

Gui, Font, s13
Gui, Add, Button, x10 y650 w150 h40 gButton1, Test

Gui, Add, Checkbox, cWhite x190 y10 vMyCheckbox gMyCheckbox, Always on top
Gui, Show, h700 w700
Return

^Enter::
Button1:
Gui, Submit, NoHide
Random, ran1, -2147483648, 2147483646
A_Nowww := A_Now
MsgBox, 262144, Button, You clicked the button`nTEST6969420_%ran1%__%A_Nowww%`n%Edit1%

FileAppend,
(
%Edit1%
), HTH test\TEST6969420_%ran1%__%A_Nowww%.hth

Sleep, 100
Gui, Destroy
MsgBox, 262208, RUN...., RUNING!, 0.10
FileDelete, HTH test\run.txt
Sleep, 10
RunWait "HTH.exe" "HTH test\TEST6969420_%ran1%__%A_Nowww%.hth" "HTH test\run.txt"

Loop
{
Sleep, 20
FileRead, outVar, HTH test\run.txt
if (outVar = 1)
{
FileDelete, run.txt
Sleep, 200
Run, "chrome.exe" "HTH test\index.html"
ExitApp
}
Sleep, 20
}

FileDelete, HTH test\run.txt
ExitApp
Return

MyCheckbox:
Gui, Submit, NoHide
if (MyCheckbox = 1)
{
;MsgBox, The checkbox is checked.
Gui, +AlwaysOnTop
}
else
{
;MsgBox, The checkbox is unchecked.
Gui, -AlwaysOnTop
}
Return

GuiClose:
ExitApp
Return