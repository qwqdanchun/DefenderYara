
rule Trojan_BAT_Cerbu_AMAA_MTB{
	meta:
		description = "Trojan:BAT/Cerbu.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {11 06 11 07 11 05 11 07 28 90 01 02 00 06 20 90 01 02 00 00 61 d1 9d 20 90 01 01 00 00 00 28 90 01 02 00 06 13 0c 2b a7 90 00 } //05 00 
		$a_01_1 = {06 07 06 07 93 1f 66 61 02 61 d1 9d 2b 12 07 17 59 25 0b 16 2f ea } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Cerbu_AMAA_MTB_2{
	meta:
		description = "Trojan:BAT/Cerbu.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 25 8e 69 0b 7e 90 01 01 00 00 0a 20 90 01 02 00 00 20 90 01 02 00 00 1f 40 28 90 01 01 00 00 06 0c 16 08 07 28 90 01 01 00 00 0a 7e 90 01 01 00 00 0a 16 08 7e 90 01 01 00 00 0a 16 7e 90 01 01 00 00 0a 28 90 01 01 00 00 06 15 28 90 01 01 00 00 06 26 2a 90 00 } //01 00 
		$a_01_1 = {0a 0a 20 d0 07 00 00 28 04 00 00 06 } //01 00 
		$a_80_2 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //VirtualAlloc  01 00 
		$a_80_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //WaitForSingleObject  00 00 
	condition:
		any of ($a_*)
 
}