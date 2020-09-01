#include <Constants.au3>

;
; AutoIt Version: 3.3.14.5
; Language:       English
; Platform:       Windows 10
; Author:         Bug9519
;
; Script Function:
;   Away From Keyboard script for GTA V Online, will move my character around randomly, in a safe location, so that I don't get kicked off the session.
;

; Wait for GTA V to become active. The classname "grcWindow" is monitored instead of the window title
; WinWaitActive("[CLASS:grcWindow]", "Grand Theft Auto V")
ProcessWait("GTA5.exe")
WinWaitActive("[CLASS:grcWindow]", "", 20)

; Now that the GTA V window is active, type some text.
Sleep(2000)
Send("w")
Send("w down")
Send("{SPACE}")
Send("w up")
Sleep(5000)
Send("a")
Send("a")
Send("{SPACE}")
Sleep(5000)
Send("s")
Send("s")
Send("{SPACE}")
Sleep(5000)
Send("d")
Send("d")
Send("{SPACE}")
Sleep(5000)