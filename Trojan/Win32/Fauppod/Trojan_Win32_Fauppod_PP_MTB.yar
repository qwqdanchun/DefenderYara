
rule Trojan_Win32_Fauppod_PP_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.PP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {80 3a 00 74 90 01 01 90 90 90 90 46 8a 46 90 01 01 89 c0 32 02 89 c0 aa 83 ec 04 c7 04 24 90 01 04 83 c4 04 42 83 e9 01 90 90 85 c9 75 90 01 01 61 c9 c2 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}