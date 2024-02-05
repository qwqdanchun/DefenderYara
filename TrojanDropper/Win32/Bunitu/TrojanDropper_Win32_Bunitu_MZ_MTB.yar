
rule TrojanDropper_Win32_Bunitu_MZ_MTB{
	meta:
		description = "TrojanDropper:Win32/Bunitu.MZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b c8 8b d1 89 15 90 01 04 a1 90 01 04 8b 0d 90 01 04 89 08 5f 5d c3 90 09 06 00 33 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}