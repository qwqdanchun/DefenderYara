
rule Trojan_Win32_Redline_GTN_MTB{
	meta:
		description = "Trojan:Win32/Redline.GTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b 4d fc 8b 15 90 01 04 80 34 11 55 8d 04 11 8d 45 90 01 01 50 ff 15 90 01 04 8b 4d 90 01 01 3b 0d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Redline_GTN_MTB_2{
	meta:
		description = "Trojan:Win32/Redline.GTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 c2 0f b6 45 e7 c1 e0 90 01 01 09 d0 88 45 e7 80 45 e7 4f 0f b6 45 e7 c1 f8 90 01 01 89 c2 0f b6 45 e7 c1 e0 90 01 01 09 d0 88 45 e7 80 75 e7 3a 80 45 e7 78 8b 45 ec 30 45 e7 8b 45 ec 00 45 e7 f6 55 e7 8b 45 ec 28 45 e7 f6 5d e7 8d 55 d0 8b 45 ec 01 c2 0f b6 45 e7 88 02 83 45 ec 01 90 00 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00 
	condition:
		any of ($a_*)
 
}