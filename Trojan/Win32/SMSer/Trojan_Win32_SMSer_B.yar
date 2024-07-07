
rule Trojan_Win32_SMSer_B{
	meta:
		description = "Trojan:Win32/SMSer.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 25 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 67 00 75 00 69 00 64 00 2e 00 70 00 68 00 70 00 3f 00 67 00 75 00 69 00 64 00 3d 00 7b 00 25 00 73 00 7d 00 26 00 77 00 69 00 64 00 3d 00 25 00 64 00 26 00 75 00 3d 00 25 00 64 00 26 00 6e 00 75 00 6d 00 62 00 65 00 72 00 3d 00 25 00 64 00 } //1 http://%s.com/registerguid.php?guid={%s}&wid=%d&u=%d&number=%d
		$a_00_1 = {69 66 20 65 78 69 73 74 20 25 73 20 67 6f 74 6f 20 6c 6f 6f 70 } //1 if exist %s goto loop
		$a_00_2 = {73 68 75 74 64 6f 77 6e 2e 65 78 65 20 2d 72 20 2d 74 20 30 20 2d 66 } //1 shutdown.exe -r -t 0 -f
		$a_00_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 5c 00 } //1 Software\Microsoft\Windows NT\CurrentVersion\WinLogon\
		$a_00_4 = {55 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 } //1 Userinit
		$a_01_5 = {57 69 6e 45 78 65 63 } //1 WinExec
		$a_01_6 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 57 } //1 HttpSendRequestW
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule Trojan_Win32_SMSer_B_2{
	meta:
		description = "Trojan:Win32/SMSer.B,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {42 65 67 69 6e 50 61 69 6e 74 } //1 BeginPaint
		$a_01_1 = {43 72 65 61 74 65 44 65 73 6b 74 6f 70 57 } //1 CreateDesktopW
		$a_01_2 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 57 } //1 RegSetValueExW
		$a_01_3 = {6a 73 33 ff 47 57 6a 65 53 ff 15 } //1
		$a_01_4 = {73 68 75 74 64 6f 77 6e 2e 65 78 65 20 2d 72 20 2d 74 20 30 20 2d 66 } //1 shutdown.exe -r -t 0 -f
		$a_01_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 25 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 67 00 75 00 69 00 64 00 2e 00 70 00 68 00 70 00 3f 00 67 00 75 00 69 00 64 00 3d 00 7b 00 25 00 73 00 7d 00 26 00 77 00 69 00 64 00 3d 00 25 00 64 00 26 00 75 00 3d 00 25 00 64 00 26 00 6e 00 75 00 6d 00 62 00 65 00 72 00 3d 00 25 00 64 00 } //1 http://%s.com/registerguid.php?guid={%s}&wid=%d&u=%d&number=%d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}