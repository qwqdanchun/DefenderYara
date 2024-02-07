
rule Trojan_Win32_VB_QA{
	meta:
		description = "Trojan:Win32/VB.QA,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [autorun]
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 54 00 61 00 73 00 6b 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00  Windows Task Manager
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 4e 00 45 00 54 00 44 00 45 00 54 00 45 00 43 00 54 00 2e 00 43 00 4f 00 4d 00 } //01 00  shell\open\Command=NETDETECT.COM
		$a_01_3 = {77 00 69 00 6e 00 68 00 65 00 6c 00 70 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  winhelp32.exe
		$a_01_4 = {73 00 79 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 74 00 78 00 74 00 } //00 00  sysconfig.txt
	condition:
		any of ($a_*)
 
}