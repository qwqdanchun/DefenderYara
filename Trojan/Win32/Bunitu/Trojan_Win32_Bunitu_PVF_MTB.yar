
rule Trojan_Win32_Bunitu_PVF_MTB{
	meta:
		description = "Trojan:Win32/Bunitu.PVF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b c7 eb 00 eb 00 33 05 90 01 04 8b c8 8b d1 89 15 90 01 04 8b 15 90 01 04 a1 90 01 04 89 02 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}