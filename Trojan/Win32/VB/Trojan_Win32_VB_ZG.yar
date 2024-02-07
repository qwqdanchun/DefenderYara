
rule Trojan_Win32_VB_ZG{
	meta:
		description = "Trojan:Win32/VB.ZG,SIGNATURE_TYPE_PEHSTR,24 00 22 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 57 00 45 00 42 00 50 00 4e 00 54 00 5c 00 77 00 65 00 42 00 70 00 6e 00 74 00 2e 00 56 00 42 00 70 00 } //0a 00  \WEBPNT\weBpnt.VBp
		$a_01_1 = {6d 6f 64 48 69 64 65 50 72 6f 63 65 73 73 } //0a 00  modHideProcess
		$a_01_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 65 00 62 00 20 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 } //02 00  Microsoft Web Printer
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //02 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 } //02 00  SYSTEM\CurrentControlSet\Services\
		$a_01_5 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 } //00 00  \Program Files\Internet Explorer\IEXPLORE.EXE
	condition:
		any of ($a_*)
 
}