
rule Trojan_Win32_Formbook_SB_MTB{
	meta:
		description = "Trojan:Win32/Formbook.SB!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 63 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 6f 00 73 00 6c 00 65 00 64 00 65 00 6e 00 20 00 73 00 74 00 75 00 62 00 5c 00 41 00 5f 00 67 00 72 00 65 00 61 00 74 00 5f 00 75 00 74 00 31 00 37 00 37 00 39 00 38 00 37 00 38 00 38 00 32 00 30 00 30 00 34 00 5c 00 71 00 75 00 69 00 63 00 6b 00 54 00 72 00 61 00 79 00 2e 00 76 00 62 00 70 00 } //1 C:\Users\Pc\Desktop\Posleden stub\A_great_ut177987882004\quickTray.vbp
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 2d 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run-
		$a_01_2 = {5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 2e 00 6c 00 73 00 74 00 } //1 \Folders.lst
		$a_01_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 62 00 67 00 43 00 4f 00 44 00 45 00 2e 00 63 00 6f 00 6d 00 } //1 http://rbgCODE.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}