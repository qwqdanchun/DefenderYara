
rule Trojan_Win32_Zenpak_RO_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.RO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 89 e5 56 8a 45 14 8b 4d 10 8b 55 0c 8b 75 08 c7 05 90 01 08 8a 24 0a 28 c4 c7 05 90 01 08 88 24 0e 5e 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}