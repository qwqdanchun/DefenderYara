
rule Trojan_Win32_Amadey_APR_MTB{
	meta:
		description = "Trojan:Win32/Amadey.APR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 cd 89 4c 24 90 01 01 8d 0c 07 c1 e8 90 01 01 89 44 24 90 01 01 8b 44 24 90 01 01 01 44 24 90 01 01 8b 44 24 90 01 01 33 c1 31 44 24 90 01 01 81 3d 90 01 08 89 44 24 90 00 } //01 00 
		$a_03_1 = {8b c6 c1 e0 90 01 01 89 44 24 90 01 01 8b 44 24 90 01 01 01 44 24 90 01 01 8b ce c1 e9 90 01 01 03 cb 8d 14 37 31 54 24 90 01 01 c7 05 90 01 08 c7 05 90 01 08 89 4c 24 14 8b 44 24 90 01 01 31 44 24 90 01 01 8b 44 24 90 01 01 29 44 24 90 01 01 8b 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}