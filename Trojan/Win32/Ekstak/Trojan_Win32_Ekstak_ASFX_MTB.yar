
rule Trojan_Win32_Ekstak_ASFX_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASFX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {6a 01 ff 15 90 01 03 00 6a 05 e8 90 01 03 00 6a 00 ff 15 90 01 03 00 3b 05 90 01 03 00 74 05 a3 30 de 64 00 33 c0 a0 90 00 } //05 00 
		$a_03_1 = {68 a5 00 00 00 ff 15 90 01 03 00 6a 05 e8 90 01 03 00 6a 00 ff 15 90 01 03 00 3b 05 90 01 03 00 74 05 a3 90 01 03 00 33 c0 a0 90 00 } //05 00 
		$a_03_2 = {6a 2a ff 15 90 01 03 00 85 c0 75 10 5f 5e 5d b8 01 00 00 00 5b 81 c4 18 06 00 00 c3 8b 3d 90 01 03 00 56 ff d7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}