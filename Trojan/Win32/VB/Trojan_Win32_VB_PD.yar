
rule Trojan_Win32_VB_PD{
	meta:
		description = "Trojan:Win32/VB.PD,SIGNATURE_TYPE_PEHSTR,07 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4e 00 6f 00 74 00 65 00 70 00 61 00 64 00 5c 00 64 00 64 00 } //1 HKEY_CURRENT_USER\Software\Microsoft\Notepad\dd
		$a_01_1 = {6c 69 65 6e 74 48 76 69 72 } //1 lientHvir
		$a_01_2 = {4d 00 53 00 58 00 4d 00 4c 00 32 00 2e 00 58 00 4d 00 4c 00 48 00 54 00 54 00 50 00 } //1 MSXML2.XMLHTTP
		$a_01_3 = {41 00 44 00 4f 00 44 00 42 00 2e 00 53 00 74 00 72 00 65 00 61 00 6d 00 00 00 00 00 4d 00 6f 00 64 00 65 00 00 00 00 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 42 00 6f 00 64 00 79 00 00 00 00 00 57 00 72 00 69 00 74 00 65 00 } //1
		$a_01_4 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 28 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 22 00 00 00 1a 00 00 00 2e 00 65 00 78 00 65 00 22 00 29 00 26 00 28 00 64 00 65 00 6c 00 20 00 22 00 } //1
		$a_01_5 = {6d 63 69 53 65 6e 64 53 74 72 69 6e 67 41 } //1 mciSendStringA
		$a_01_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}