
rule Trojan_BAT_Lazy_NBL_MTB{
	meta:
		description = "Trojan:BAT/Lazy.NBL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {02 7b 09 03 00 04 6f aa 00 00 06 0b 02 7b 09 03 00 04 6f aa 00 00 06 0c 03 08 6f 09 01 00 0a 3a 08 00 00 00 03 08 14 6f 0a 01 00 0a 07 1f 20 5f 3a 01 00 00 00 2a 07 17 5f 39 06 00 00 00 1a 38 01 00 00 00 18 0d 07 1e 5f 39 09 00 00 00 09 18 58 0d 38 0d 00 00 00 07 1f 40 5f 39 04 00 00 00 09 1a 58 0d 07 20 80 00 00 00 5f 39 04 00 00 00 09 1e 58 0d 02 7b 09 03 00 04 09 6f a2 00 00 06 26 38 7a ff ff ff } //01 00 
		$a_80_1 = {52 75 6e 52 65 67 69 73 74 72 79 } //RunRegistry  01 00 
		$a_80_2 = {44 65 6c 65 74 65 52 65 67 69 73 74 72 79 } //DeleteRegistry  01 00 
		$a_80_3 = {53 65 74 52 65 67 69 73 74 72 79 } //SetRegistry  01 00 
		$a_80_4 = {49 6e 76 6f 6b 65 50 6f 6c 69 63 79 } //InvokePolicy  00 00 
	condition:
		any of ($a_*)
 
}