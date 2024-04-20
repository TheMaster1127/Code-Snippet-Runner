;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; runHTML JS
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
Gui, Add, Text, cWhite x10 y10, Test HTML/JS
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

runConsole := 0
isHTML := 0
Loop, Parse, Edit1, `n ,`r
{

if (SubStr(Trim(A_LoopField), 1, 1) = "<")
{
isHTML := 1
break
}
}

if (isHTML = 1)
{
FileAppend,
(
%Edit1%
), HTML JS\TEST6969420_%ran1%__%A_Nowww%.html
}
else
{
runConsole := 1
FileAppend,
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HTML TEST</title>
<style>
      body {
        background-color: #202020;
        font-family:
          "Open Sans",
          -apple-system,
          BlinkMacSystemFont,
          "Segoe UI",
          Roboto,
          Oxygen-Sans,
          Ubuntu,
          Cantarell,
          "Helvetica Neue",
          Helvetica,
          Arial,
          sans-serif;
      }
    </style>
</head>
<body>
<script>

%Edit1%

</script>
</body>
</html>
), HTML JS\TEST6969420_%ran1%__%A_Nowww%.html
}

Sleep, 100
Gui, Destroy
MsgBox, 262208, RUN...., RUNING!, 0.10
WinActivate, 1
WinWait, 1
Sleep, 100
Run HTML JS\TEST6969420_%ran1%__%A_Nowww%.html
if (runConsole = 1)
{
WinActivate, 1
WinWait, 1
Sleep, 100
Send, {F12}
}
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