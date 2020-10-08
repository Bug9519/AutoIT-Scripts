#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Bug9519

 Script Function:
	Upload specified file (test.txt) to an FTP server using details provided.

	Just change the details to match your account details, and file to upload.


#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <FTPEx.au3>

Local $server = "FTP Server goes here (ftp.drivehq.com)"
Local $username = "Your username goes here."
Local $pass = "Your password goes here."
Local $hOpen = _FTP_Open("MyFTP Control")
Local $Conn = _FTP_Connect($hOpen, $server, $username, $pass, 1)
Local $Ftpp = _FTP_FilePut($Conn, "D:\random\folder\test.txt", "/test.txt")
Local $Ftpc = _FTP_Close($hOpen)
