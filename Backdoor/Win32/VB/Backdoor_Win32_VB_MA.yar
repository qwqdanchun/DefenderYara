
rule Backdoor_Win32_VB_MA{
	meta:
		description = "Backdoor:Win32/VB.MA,SIGNATURE_TYPE_PEHSTR,08 00 08 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {6c 00 6f 00 67 00 67 00 65 00 72 00 5c 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //02 00  logger\server\Project1.vbp
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 69 00 7a 00 69 00 6e 00 69 00 3a 00 20 00 } //01 00  Windows Dizini: 
		$a_01_2 = {74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 69 00 64 00 75 00 72 00 64 00 75 00 72 00 } //02 00  transferidurdur
		$a_01_3 = {73 00 69 00 73 00 74 00 65 00 6d 00 62 00 69 00 6c 00 67 00 69 00 73 00 69 00 61 00 6c 00 } //00 00  sistembilgisial
	condition:
		any of ($a_*)
 
}