
rule Trojan_Win32_Lotok_RPY_MTB{
	meta:
		description = "Trojan:Win32/Lotok.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {57 8b f0 66 c7 44 24 14 02 00 ff 15 90 01 04 66 89 44 24 12 8b 46 0c 6a 10 8b 08 8d 44 24 14 50 8b 11 8b 4b 08 51 89 54 24 20 ff 15 90 01 04 83 f8 ff 75 1b 8b 53 0c 52 ff 15 90 01 04 8b 43 0c 68 e8 03 00 00 50 ff 15 90 01 04 eb a8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}