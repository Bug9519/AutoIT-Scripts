#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Bug9519

 Script Function:
	To type :egg: into a specific Discord text channel, for no reason whatsoever.

	Coded: 20/01/2021

#ce ----------------------------------------------------------------------------

; Set the Escape hotkey to terminate the script.
HotKeySet("{ESC}", "_Terminate")

Example()

Func Example()
    ; Initialize a Local variable.
    Local $aMgp = 0

    ; Create an endless loop, 1 will always be 1 therefore True.
    While 1
        WinWaitActive("general - Discord")
		Send(":egg:")
		Send("{ENTER}")
		Sleep(1000)
    WEnd
EndFunc   ;==>Example

Func _Terminate()
    Exit
EndFunc   ;==>_Terminate