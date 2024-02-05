
rule Trojan_Win32_Zusy_ASB_MTB{
	meta:
		description = "Trojan:Win32/Zusy.ASB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {89 c8 31 d2 f7 f3 0f b6 44 15 00 30 04 0e 83 c1 01 39 cf 75 } //01 00 
		$a_03_1 = {89 34 24 89 44 24 04 c7 45 90 01 01 66 75 63 6b c7 45 90 01 01 79 6f 75 00 e8 90 00 } //01 00 
		$a_01_2 = {43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 64 77 77 6d 6d 2e 74 78 74 } //01 00 
		$a_01_3 = {2f 6d 31 2e 74 78 74 } //00 00 
	condition:
		any of ($a_*)
 
}