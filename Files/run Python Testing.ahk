;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; run Python Testing
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
Gui, Add, Text, cWhite x10 y10, Test Python
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
# this is a test demo idk
import time`n
`n%Edit1%`n`n
`n
time.sleep(5)

), Python\TEST6969420_%ran1%__%A_Nowww%.py

Sleep, 100
Gui, Destroy
MsgBox, 262208, RUN...., RUNING!, 0.10
Run Python\TEST6969420_%ran1%__%A_Nowww%.py
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