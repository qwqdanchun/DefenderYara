
rule Trojan_Win32_IcedId_DBA_MTB{
	meta:
		description = "Trojan:Win32/IcedId.DBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b c6 2b c7 48 0f b7 d8 0f b7 cb 2b 0d 90 01 04 81 c5 90 01 04 89 2a 83 c2 04 83 6c 24 14 01 8d 74 0e 14 89 54 24 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}