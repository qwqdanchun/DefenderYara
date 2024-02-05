
rule Trojan_Win32_ClipBanker_EA_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {30 31 31 30 31 30 30 31 20 30 31 31 31 30 31 30 30 20 30 31 31 31 30 30 31 31 20 30 31 31 30 31 31 30 30 20 30 31 31 30 30 30 30 31 20 30 31 31 31 30 31 30 31 20 30 31 31 31 30 30 31 30 20 30 31 31 30 30 31 30 31 20 30 31 31 30 31 31 31 30 20 30 31 31 30 30 31 30 31 20 30 31 31 30 31 31 30 30 20 30 31 31 30 31 30 30 31 20 30 31 31 31 31 30 31 30 20 30 31 30 30 30 30 30 30 } //01 00 
		$a_81_1 = {30 31 31 30 31 31 31 30 20 30 30 31 30 30 30 30 30 20 30 30 31 31 31 31 30 31 20 30 30 31 30 30 30 30 30 20 30 31 30 30 30 31 30 30 20 30 31 31 30 31 30 } //01 00 
		$a_81_2 = {79 6f 75 20 67 6f 74 20 68 61 63 6b 65 64 20 79 6f 75 20 67 6f 74 20 68 61 63 6b 65 64 20 79 6f 75 20 67 6f 74 20 68 61 63 6b 65 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_ClipBanker_EA_MTB_2{
	meta:
		description = "Trojan:Win32/ClipBanker.EA!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {8d 41 6f 66 31 44 4d c4 41 83 f9 1d 72 f2 } //00 00 
	condition:
		any of ($a_*)
 
}