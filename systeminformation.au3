#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Bug9519

 Script Function:
	Gather as much system information as possible, and save it to a file.
	Now this script also uploads the systeminfo.txt file to a FTP Server of your choice!

	For diagnostic purposes...

	TODO:
	     -Implement code to upload file to specified FTP Server. - Implemented: 8/10/2020 (8th of October, 2020).


#ce ----------------------------------------------------------------------------

#include <FileConstants.au3>
#include <FTPEx.au3> ; To upload to a FTP Server.
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

systemInfoGrab()
ftpUploadFile()
Exit

Func systemInfoGrab()
	Local Const $sFilePath = "systeminfo.txt" ; You can change this to any filename you want.

	Local $hFileOpen = FileOpen($sFilePath, $FO_READ + $FO_APPEND)
	If $hFileOpen = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "An error occurred when reading/writing the file.")
		Return False
	EndIf

	FileWrite($hFileOpen, "CPU Architecture: " & @CPUArch & @CRLF)
	FileWrite($hFileOpen, "Keyboard Layout: " & @KBLayout & @CRLF)
	FileWrite($hFileOpen, "MUI Language: " & @MUILang & @CRLF)
	FileWrite($hFileOpen, "OS Architecture: " & @OSArch & @CRLF)
	FileWrite($hFileOpen, "OS Language: " & @OSLang & @CRLF)
    	FileWrite($hFileOpen, "OS Type: " & @OSType & @CRLF)
    	FileWrite($hFileOpen, "OS Version: " & @OSVersion &@CRLF)
    	FileWrite($hFileOpen, "OS Build: " & @OSBuild & @CRLF)
    	FileWrite($hFileOpen, "OS Service Pack: " & @OSServicePack & @CRLF)
    	FileWrite($hFileOpen, "Computer Name: " & @ComputerName & @CRLF)
    	FileWrite($hFileOpen, "Username: " & @UserName & @CRLF)
    	FileWrite($hFileOpen, "IP Address - First Adapter: " & @IPAddress1 & @CRLF)
	FileWrite($hFileOpen, "IP Address - Second Adapter: " & @IPAddress2 & @CRLF)
	FileWrite($hFileOpen, "IP Address - Third Adapter: " & @IPAddress3 & @CRLF)
	FileWrite($hFileOpen, "IP Address - Fourth Adapter: " & @IPAddress4 & @CRLF)
    	FileWrite($hFileOpen, "Screen Pixel Height: " & @DesktopHeight & @CRLF)
    	FileWrite($hFileOpen, "Screen Pixel Width: " & @DesktopWidth & @CRLF)

	FileClose($hFileOpen)
	Sleep(5000) ; Sleeps for 5 seconds, to make sure the file has been opened, written to, and closed. Feel free to change this to your desired amount, or get rid of it completely.

	Return True
EndFunc

Func ftpUploadFile()
		Local $server = "ftp.drivehq.com"            ; Replace with your FTP Server, unless you're using DriveHQ FTP Server.
		Local $username = "username"                 ; Replace with your username.
		Local $pass = "password"                     ; Replace with your password.
		Local $hOpen = _FTP_Open("MyFTP Control")
		Local $Conn = _FTP_Connect($hOpen, $server, $username, $pass, 1)
		Local $Ftpp = _FTP_FilePut($Conn, "systeminfo.txt", "/systeminfo.txt") ; If you change the filename up the top, remember to change these as well!
		Local $Ftpc = _FTP_Close($hOpen)

	Return True
EndFunc
