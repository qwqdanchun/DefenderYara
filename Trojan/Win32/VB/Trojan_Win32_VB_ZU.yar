
rule Trojan_Win32_VB_ZU{
	meta:
		description = "Trojan:Win32/VB.ZU,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 79 74 4d 65 73 73 61 67 65 00 00 62 79 74 50 61 73 73 77 6f 72 64 00 62 79 74 49 6e } //01 00 
		$a_01_1 = {3a 00 5c 00 56 00 42 00 5c 00 6f 00 77 00 6e 00 5c 00 5a 00 42 00 5c 00 73 00 73 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  :\VB\own\ZB\ss\Project1.vbp
		$a_01_2 = {4e 00 6f 00 45 00 6e 00 63 00 } //01 00  NoEnc
		$a_01_3 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 41 00 } //00 00  ShellExecuteA
	condition:
		any of ($a_*)
 
}