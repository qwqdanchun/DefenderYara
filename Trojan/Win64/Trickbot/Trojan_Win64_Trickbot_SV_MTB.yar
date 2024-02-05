
rule Trojan_Win64_Trickbot_SV_MTB{
	meta:
		description = "Trojan:Win64/Trickbot.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {48 8b c4 48 89 58 90 01 01 48 89 70 90 01 01 48 89 78 90 01 01 55 41 54 41 55 41 56 41 57 48 8d a8 90 01 04 48 81 ec 90 01 04 48 8b 05 90 01 04 48 33 c4 48 89 85 90 01 04 c7 85 90 01 08 33 db c6 85 90 01 05 33 c0 c6 85 90 01 05 44 8b c3 c6 85 90 01 05 c6 85 90 01 05 44 8d 6b 01 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 c6 85 90 01 05 88 85 90 01 04 8a 85 90 01 04 42 0f be 90 01 06 8b 85 90 01 04 0f be c8 8b c2 33 c1 42 88 84 90 01 05 4d 03 c5 49 83 f8 0c 72 90 00 } //01 00 
		$a_01_1 = {4d 61 69 6c 43 6c 69 65 6e 74 2e 64 6c 6c } //01 00 
		$a_01_2 = {4d 6f 76 65 4c 65 66 74 } //01 00 
		$a_01_3 = {52 65 6c 65 61 73 65 } //00 00 
	condition:
		any of ($a_*)
 
}