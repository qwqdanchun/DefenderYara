
rule Trojan_Win32_Smokeloader_GJF_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GJF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {33 c6 33 c1 2b f8 89 44 24 90 01 01 8b c7 c1 e0 90 01 01 81 3d 90 01 08 89 44 24 90 00 } //0a 00 
		$a_03_1 = {8b c7 c1 e8 90 01 01 8d 34 3b c7 05 90 01 04 19 36 6b ff c7 05 90 01 08 89 44 24 90 01 01 8b 44 24 90 01 01 01 44 24 90 01 01 81 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}