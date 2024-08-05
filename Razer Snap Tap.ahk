#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


DisPressed:=false
AisPressed:=false

~d::

DisPressed=true
send, {a up}


return

~d up::
{
    if (DisPressed)
    {
        DisPressed := false
    }
  if (AisPressed)
    {
	send, {a down}
    }
    return
}



~a::
AisPressed=true
send, {d up}
return

~a up::
{
    if (AisPressed)
    {
        AisPressed := false
    }
  if (DisPressed)
    {
	send, {d down}
    }
    return
}