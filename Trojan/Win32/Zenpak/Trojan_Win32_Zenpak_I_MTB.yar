
rule Trojan_Win32_Zenpak_I_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {89 30 01 3d 90 01 04 40 29 c2 31 1d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Zenpak_I_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 75 e8 0f b6 3c 06 01 d7 31 d2 8b 5d f0 f7 f3 8b 75 ec 0f b6 14 16 01 d7 89 f8 99 f7 f9 } //00 00 
	condition:
		any of ($a_*)
 
}