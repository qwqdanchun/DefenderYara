
rule Trojan_Win32_PrivateLoader_GMF_MTB{
	meta:
		description = "Trojan:Win32/PrivateLoader.GMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {fe c2 d0 ca c0 c1 a1 32 da 80 f1 cc 8b 04 14 } //0a 00 
		$a_03_1 = {89 07 d2 c5 8d b6 90 01 04 d2 ed 8b 0e 33 cb 8d 89 90 01 04 f7 d1 90 00 } //01 00 
		$a_01_2 = {40 2e 76 6d 70 30 } //01 00 
		$a_01_3 = {43 33 44 53 45 73 46 33 4a } //00 00 
	condition:
		any of ($a_*)
 
}