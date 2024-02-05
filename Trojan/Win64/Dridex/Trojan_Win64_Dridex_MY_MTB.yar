
rule Trojan_Win64_Dridex_MY_MTB{
	meta:
		description = "Trojan:Win64/Dridex.MY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {b0 24 66 8b 90 02 03 66 89 90 02 03 8a 90 02 03 44 8a 90 02 03 41 80 90 02 03 44 88 90 02 03 28 d0 4c 8b 90 02 03 4d 21 c9 8a 90 02 03 4c 89 90 02 03 4c 8b 90 02 03 4c 89 90 02 03 38 d0 0f 87 90 02 04 e9 90 00 } //01 00 
		$a_02_1 = {66 8b 44 24 90 01 01 66 35 90 02 03 8b 90 02 03 66 89 90 02 03 81 f1 90 02 04 8b 90 02 03 89 90 02 03 44 8b 90 02 03 44 8a 90 02 03 41 80 90 02 03 44 88 90 02 03 41 39 c8 77 c8 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}