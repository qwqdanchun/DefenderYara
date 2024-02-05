
rule TrojanDropper_Win32_VB_ER{
	meta:
		description = "TrojanDropper:Win32/VB.ER,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 6f 64 4d 61 69 6e 00 4d 6f 64 52 43 34 00 00 53 74 75 62 00 00 00 00 0a 00 00 00 3c 00 40 00 23 00 40 00 3e 00 } //01 00 
		$a_00_1 = {2e 00 65 00 78 00 65 00 00 00 00 00 06 00 00 00 74 00 6d 00 70 00 00 00 1c 00 00 00 5c 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}