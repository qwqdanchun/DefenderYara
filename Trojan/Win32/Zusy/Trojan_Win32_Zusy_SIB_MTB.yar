
rule Trojan_Win32_Zusy_SIB_MTB{
	meta:
		description = "Trojan:Win32/Zusy.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 45 08 89 45 08 81 7d 08 90 01 04 7f 90 01 01 6a 90 01 01 68 90 01 04 68 90 01 04 6a 90 01 01 ff 15 90 01 04 8b 4d 08 83 c1 90 01 01 89 8d 90 01 04 8b 55 08 81 c2 90 01 04 89 95 90 01 04 8b 45 08 05 90 01 04 89 85 90 01 04 8b 4d 08 83 c1 90 01 01 89 8d 90 01 04 8b 55 08 81 c2 90 01 04 89 95 90 01 04 8b 45 08 83 c0 90 01 01 89 85 90 01 04 8b 4d 08 81 c1 90 01 04 89 8d 90 01 04 8b 55 08 83 c2 90 01 01 89 95 90 01 04 8b 45 08 90 00 } //01 00 
		$a_03_1 = {83 fa 01 75 90 01 01 90 02 60 c6 85 90 01 04 01 ff 15 90 01 04 68 90 01 04 ff 15 90 01 04 ba 01 00 00 00 85 d2 74 90 01 01 ff 15 90 01 04 68 90 01 04 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}