
rule Trojan_Win32_Raccoon_MKW_MTB{
	meta:
		description = "Trojan:Win32/Raccoon.MKW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c8 33 d2 8b 45 fc f7 f1 8a 0e 8b 45 fc 32 8a 90 01 04 40 88 0c 33 46 89 45 fc 83 f8 40 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}