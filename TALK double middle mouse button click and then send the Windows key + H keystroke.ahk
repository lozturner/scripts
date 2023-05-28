~MButton::
if (A_PriorHotkey != "~MButton" or A_TimeSincePriorHotkey > 400)  ; 400 milliseconds 
{
   ; this presses the middle mouse button twice quickly
   return
}
Send, #{h}  ; This presses Win+H
return
