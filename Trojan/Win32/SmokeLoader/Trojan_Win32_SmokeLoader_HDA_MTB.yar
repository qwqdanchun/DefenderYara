
rule Trojan_Win32_SmokeLoader_HDA_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.HDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {c1 e0 04 89 45 fc 8b 45 d4 01 45 fc 8b 55 f4 8b 4d f8 8b c2 d3 e8 8d 3c 13 81 c3 90 01 04 03 45 dc 33 c7 31 45 fc 8b 45 fc 29 45 f0 ff 4d e8 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}