#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Bug9519

 Script Function:
	To give cookies to bots, for my daily Tatsu bot quests.
	(Whenever I have the "Give 10 Cookies" quest.) ( Good bots get cookies ;) )

	Note: This was only coded to use on my own Discord server, Irrenhaus. It hasn't been
		  used on any other Discord servers that I am a member of.

	Coded: 17/10/2022

#ce ----------------------------------------------------------------------------

; Set the Escape hotkey to terminate the script.
HotKeySet("{ESC}", "_Terminate")

Example()

Func Example()
    ; Initialize a Local variable.
    Local $aMgp = 0

		WinWaitActive("#tatsu | Irrenhaus - Discord")
		;WinWaitActive("Untitled - Notepad") ; Keep this for testing that the script works...
		Sleep(2000) ; Sleep for 2 seconds, to enable proper focus on the Discord window.
		Send("t{!}cookie @Arkadian") ; Give the cookie to Arkadian.
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000) ; Give enough time between commands, to enable successful command usage.

		Send("t{!}cookie @Bcoins")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @BlueBoi")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @BoobBot")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @Dank{TAB}") ; TAB is sent here to use Discord's autocomplete to send a cookie to "Dank Memer" bot,
		                              ; because there is a space between Dank and Memer.
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @Emoji.gg")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @IdleRPG")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @NotSoBot")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @StrawPoll")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)

		Send("t{!}cookie @Tatsu")
		Send("{ENTER}")
		Send("{ENTER}")
		Sleep(7000)
		Exit
EndFunc

Func _Terminate()
    Exit
EndFunc   ;==>_Terminate