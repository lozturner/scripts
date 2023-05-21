MButton::
if (A_PriorHotkey <> "~MButton" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, MButton
    return
}
Click Middle 2
return

~MButton:: 
if (A_PriorHotkey <> "~MButton" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, MButton
    return
}
Run, "C:\Shortcuts\VoiceRecorder"
return
