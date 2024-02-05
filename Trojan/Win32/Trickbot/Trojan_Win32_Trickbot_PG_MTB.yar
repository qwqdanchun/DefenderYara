
rule Trojan_Win32_Trickbot_PG_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.PG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {c7 44 24 0c 01 00 00 00 c7 44 24 08 10 00 00 00 8b 55 10 89 54 24 04 89 04 24 c7 85 90 01 04 01 00 00 00 ff d1 83 ec 10 85 c0 0f 94 c0 84 c0 74 90 01 01 b8 00 00 00 00 e9 90 01 04 8b 5d 90 01 01 8b 55 90 01 01 8b 45 90 01 01 8d 4d 90 01 01 89 4c 24 10 c7 44 24 0c 01 00 00 00 89 54 24 08 c7 44 24 04 01 68 00 00 89 04 24 c7 85 90 01 04 01 00 00 00 ff d3 90 00 } //01 00 
		$a_00_1 = {c7 45 ac 5a 50 53 5a c7 45 b0 65 62 62 64 c7 45 b4 64 4a 63 4c c7 45 b8 76 74 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}