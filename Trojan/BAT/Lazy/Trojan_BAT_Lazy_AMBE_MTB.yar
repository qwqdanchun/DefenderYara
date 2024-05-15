
rule Trojan_BAT_Lazy_AMBE_MTB{
	meta:
		description = "Trojan:BAT/Lazy.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {05 11 09 8f 90 01 01 00 00 01 25 71 90 01 01 00 00 01 06 11 0e 91 61 d2 81 90 00 } //02 00 
		$a_01_1 = {08 17 58 20 00 01 00 00 5d 0c 09 06 08 91 58 20 00 01 00 00 5d 0d 16 13 0a 06 08 91 13 0a } //01 00 
		$a_80_2 = {6c 6c 64 2e 32 33 6c 65 6e 72 65 } //lld.23lenre  00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Lazy_AMBE_MTB_2{
	meta:
		description = "Trojan:BAT/Lazy.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 08 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 08 6f 90 01 01 00 00 0a 07 16 07 8e 69 6f 90 01 01 00 00 0a 0d de 0a 90 00 } //01 00 
		$a_80_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //VirtualAlloc  01 00 
		$a_80_2 = {44 65 6c 61 79 } //Delay  00 00 
	condition:
		any of ($a_*)
 
}