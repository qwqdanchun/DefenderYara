
rule Trojan_Win32_Zenpak_K_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8a 0c 32 32 0c 1f 8b 5d 90 01 01 88 0c 33 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Zenpak_K_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 7d e8 0f b6 1c 0f 01 f3 89 45 d8 89 c8 31 f6 89 55 d4 89 f2 8b 75 f0 f7 f6 8b 75 ec 0f b6 14 16 01 d3 89 d8 99 8b 5d d4 f7 fb } //00 00 
	condition:
		any of ($a_*)
 
}