
rule Trojan_Win32_AveMaria_RPM_MTB{
	meta:
		description = "Trojan:Win32/AveMaria.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 01 f7 d0 85 c0 74 03 88 04 32 83 e9 04 42 81 f9 90 01 04 7d e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}