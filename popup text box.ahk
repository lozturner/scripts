Gui, Add, Text, x6 y6 w150 h30 , Text you want to be displayed
Gui, Add, Edit, vedit1 x6 y36 w150 h20 , Link.. Thought.. Note..
Gui, Add, Edit, vedit2 x6 y66 w150 h20 , Secondary Info: Reminder?, Name?.
Gui, Add, Button, x61 y96 w40 h30 gButtonOK , Ok

Gui, Show,, Multiple Input Box.
Return

buttonOK:
Gui, Submit
FileAppend, %A_Now%`n%edit1%`n%edit2%`n, %A_Desktop%\Second_Brain.txt

; Define the file path
FilePath := A_Desktop . "\Second_Brain.txt"

; Create the message box
MsgBox, 1,, Hockey Alert`nClick OK to open the file.

; Check if OK button is clicked
IfMsgBox OK
{
    ; Check if the file exists
    IfExist, %FilePath%
    {
        ; Open the file with UseErrorLevel to handle errors
        Run, %FilePath%, , UseErrorLevel
        ; Check if an error occurred
        if (ErrorLevel = "ERROR")
        {
            MsgBox, The document could not be launched.
        }
    }
    Else
    {
        MsgBox, File not found!
    }
}

ExitApp
