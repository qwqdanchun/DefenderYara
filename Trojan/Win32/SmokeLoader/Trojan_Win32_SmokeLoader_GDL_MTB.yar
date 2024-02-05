
rule Trojan_Win32_SmokeLoader_GDL_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.GDL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c6 d3 e8 89 45 90 01 01 8b 45 90 01 01 01 45 90 01 01 8b 45 90 01 01 33 45 90 01 01 89 1d 90 01 04 31 45 90 01 01 8b 45 90 01 01 29 45 90 01 01 81 45 90 01 01 47 86 c8 61 ff 4d 90 01 01 0f 85 90 00 } //0a 00 
		$a_03_1 = {8b c7 d3 e8 89 45 90 01 01 8b 45 90 01 01 01 45 90 01 01 8b 45 90 01 01 33 45 90 01 01 83 25 90 01 04 00 31 45 90 01 01 2b 5d 90 01 01 89 5d 90 01 01 8b 45 90 01 01 29 45 90 01 01 ff 4d 90 01 01 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}