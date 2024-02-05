
rule Trojan_Win32_Pikabot_PA_MTB{
	meta:
		description = "Trojan:Win32/Pikabot.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8a 44 0d b4 34 90 02 02 88 44 0d e4 41 83 f9 19 7c f0 90 00 } //01 00 
		$a_03_1 = {4a 70 55 71 90 02 08 c7 45 90 01 01 61 76 7d 4d c7 45 90 01 01 6a 62 6b 76 c7 45 90 01 01 69 65 70 6d c7 45 90 01 01 6b 6a 54 76 c7 45 90 01 01 6b 67 61 77 90 02 08 90 02 08 34 90 00 } //00 00 
		$a_00_2 = {5d 04 00 00 59 8d 05 80 5c 34 } //00 00 
	condition:
		any of ($a_*)
 
}