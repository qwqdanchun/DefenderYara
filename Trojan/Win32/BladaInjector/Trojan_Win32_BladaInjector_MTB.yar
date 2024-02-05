
rule Trojan_Win32_BladaInjector_MTB{
	meta:
		description = "Trojan:Win32/BladaInjector!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {28 02 00 00 0a a2 25 1a 11 04 a2 28 03 00 00 0a 6f 04 00 00 0a 13 05 28 05 00 00 0a 72 90 01 01 35 00 70 18 17 8d 01 00 00 01 25 16 11 05 16 11 05 8e 69 28 06 00 00 0a a2 28 07 00 00 0a 74 02 00 00 01 13 06 11 06 6f 08 00 00 0a 16 9a 13 07 73 01 00 00 06 13 08 11 07 19 8d 01 00 00 01 25 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BladaInjector_MTB_2{
	meta:
		description = "Trojan:Win32/BladaInjector!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {28 22 00 00 0a 1f 0c 8d 10 00 00 01 25 16 06 a2 25 17 07 a2 25 18 08 a2 25 } //01 00 
		$a_02_1 = {28 82 00 00 0a 28 90 01 02 00 06 6f 90 01 02 00 0a 13 90 01 01 11 90 01 01 20 90 01 02 00 00 28 90 01 02 00 06 6f 90 01 02 00 0a 13 90 01 01 2b 90 00 } //01 00 
		$a_02_2 = {28 52 00 00 06 6f 85 00 00 0a 13 90 01 01 73 90 01 01 00 00 06 80 90 01 01 00 00 04 11 90 01 01 14 1f 90 01 01 8d 90 01 01 00 00 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BladaInjector_MTB_3{
	meta:
		description = "Trojan:Win32/BladaInjector!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 ea 00 00 0a 00 16 28 eb 00 00 0a 00 73 01 00 00 06 28 ec 00 00 0a 00 2a } //01 00 
		$a_01_1 = {6f f4 00 00 0a 28 0b 02 00 06 13 0b 11 0b 8e 69 8d 7a 00 00 01 13 0c 16 13 10 2b 19 } //01 00 
		$a_01_2 = {28 f6 00 00 0a 6f f7 00 00 0a 16 9a 13 0d 11 0d 1d 8d 0a 00 00 01 25 } //00 00 
	condition:
		any of ($a_*)
 
}