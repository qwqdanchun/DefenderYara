
rule Trojan_Win32_Zbot_SIBT_MTB{
	meta:
		description = "Trojan:Win32/Zbot.SIBT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 3e 8b 5e 04 e8 90 01 04 03 c0 89 45 90 01 01 e8 90 01 04 8b 4d 90 01 01 40 8b 75 90 01 01 89 45 90 01 01 c7 45 90 01 05 8b 01 89 45 90 01 01 8b 41 90 01 01 89 45 90 01 01 8b 41 90 01 01 89 45 90 01 01 8b 41 90 01 01 89 45 90 01 01 ff 15 90 01 04 8b cf 8b c7 c1 e9 90 01 01 03 4d 90 01 01 c1 e0 90 01 01 03 45 90 01 01 56 ff 75 90 01 01 33 c8 8d 04 3e ff 75 90 01 01 33 c8 2b d9 53 e8 90 01 04 33 c9 2b f8 8b 45 90 01 01 41 2b c8 83 c4 90 01 01 03 f1 ff 4d 90 01 01 75 90 01 01 8b 75 90 01 01 89 3e 5f 89 5e 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}