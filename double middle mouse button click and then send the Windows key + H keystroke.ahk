~MButton::
if (A_PriorHotkey != "~MButton" or A_TimeSincePriorHotkey > 400)  ; 400 milliseconds 
{
   ; Too much time between clicks, so this isn't a double-click.
   return
}
Send, #{h}  ; This will emulate pressing Win+H
return
