
rule Trojan_Win32_VB_AAC{
	meta:
		description = "Trojan:Win32/VB.AAC,SIGNATURE_TYPE_PEHSTR,20 00 20 00 08 00 00 "
		
	strings :
		$a_01_0 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 6d 00 6f 00 75 00 73 00 65 00 2c 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //10 rundll32.exe mouse,disable
		$a_01_1 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 6b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 2c 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //10 rundll32.exe keyboard,disable
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //5 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {42 6c 6f 63 6b 49 6e 70 75 74 } //5 BlockInput
		$a_01_4 = {43 00 3a 00 5c 00 70 00 69 00 6e 00 6f 00 79 00 2e 00 65 00 78 00 65 00 } //2 C:\pinoy.exe
		$a_01_5 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 70 00 69 00 6e 00 6f 00 79 00 2e 00 65 00 78 00 65 00 } //2 C:\windows\pinoy.exe
		$a_01_6 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 70 00 69 00 6e 00 6f 00 79 00 2e 00 65 00 78 00 65 00 } //2 C:\windows\system\pinoy.exe
		$a_01_7 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 70 00 69 00 6e 00 6f 00 79 00 2e 00 65 00 78 00 65 00 } //2 C:\windows\system32\pinoy.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2) >=32
 
}