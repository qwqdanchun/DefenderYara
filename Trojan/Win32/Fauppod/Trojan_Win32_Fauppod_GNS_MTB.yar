
rule Trojan_Win32_Fauppod_GNS_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.GNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {83 ec 04 c7 04 24 90 01 04 83 c4 04 83 c6 01 8a 46 ff 83 ec 04 c7 04 24 90 01 04 83 c4 04 83 ec 04 c7 04 24 90 01 04 83 c4 04 32 02 83 ec 04 c7 04 24 90 01 04 83 c4 04 88 07 47 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fauppod_GNS_MTB_2{
	meta:
		description = "Trojan:Win32/Fauppod.GNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {83 ec 04 c7 04 24 90 01 04 83 c4 04 68 90 01 04 83 c4 04 32 02 83 ec 04 c7 04 90 01 04 6f 83 c4 04 83 c7 01 88 47 ff 90 01 01 83 c2 01 68 90 01 04 83 c4 04 49 53 83 c4 04 89 c0 85 c9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}