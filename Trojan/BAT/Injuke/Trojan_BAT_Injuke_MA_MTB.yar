
rule Trojan_BAT_Injuke_MA_MTB{
	meta:
		description = "Trojan:BAT/Injuke.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 08 16 08 8e 69 6f 90 01 03 0a 07 6f 90 01 03 0a 16 6a 31 0d 08 2c 0a 07 6f 90 01 03 0a 13 05 de 0a de 06 90 00 } //02 00 
		$a_03_1 = {72 01 00 00 70 28 04 00 00 06 90 01 01 2d 03 26 2b 07 80 01 00 00 04 2b 00 2a 90 00 } //02 00 
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_3 = {57 65 62 52 65 71 75 65 73 74 } //01 00  WebRequest
		$a_01_4 = {54 68 72 65 61 64 53 74 61 72 74 } //01 00  ThreadStart
		$a_01_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}