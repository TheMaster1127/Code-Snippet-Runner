    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; run AHK
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;

Gui, Font, s13
Gui, Add, Text, x10 y10, Test
Gui, Font, s9
Gui, Add, Edit, x10 y40 w500 h600 vEdit1,

Gui, Font, s13
Gui, Add, Button, x10 y650 w150 h40 gButton1, Test

Gui, Add, Checkbox, x100 y10 vMyCheckbox gMyCheckbox, Always on top
Gui, Show, h700 w700
Return

^Enter::
Button1:
Gui, Submit, NoHide
Random, ran1, -2147483648, 2147483646
A_Nowww := A_Now
MsgBox, 262144, Button, You clicked the button`nTEST6969420_%ran1%__%A_Nowww%`n%Edit1%

word = GuiClose`:
wordLen := StrLen(word)
file = %Edit1%
count = 0

Loop Read, %file%
{
	pos = 1
;~ 	l := A_Index
	Loop
	{
		pos := InStr(A_LoopReadLine, word, false, pos)
		If (pos = 0)
			Break	; No longer found in the line
;~ 		StringMid f, A_LoopReadLine, pos, wordLen
		pos += wordLen
		; Here, you may want to test the char after the word:
		; if alphabetical, it may be a false positive (eg. humanity)
		; unless you want the plural (humans)
		count++
;~ 		MsgBox %l% - %A_LoopReadLine%`n%pos%: %f% (%count%)
	}
}

;MsgBox, %count%

if (count >= 1)
{

FileAppend,
(
; this is a test demo idk
`n%Edit1%`n`n
`n
Return
GuiClose:
ExitApp
Return
!L::
ExitApp
Return

), AutoHotKey\TEST6969420_%ran1%__%A_Nowww%.ahk
}
else
{
FileAppend,
(
; this is a test demo idk
`n%Edit1%`n`n
`n
Return
!L::
ExitApp
Return

), AutoHotKey\TEST6969420_%ran1%__%A_Nowww%.ahk
}

Sleep, 100
Gui, Destroy
MsgBox, 262208, RUN...., RUNING!, 0.10
Run AutoHotKey\TEST6969420_%ran1%__%A_Nowww%.ahk
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