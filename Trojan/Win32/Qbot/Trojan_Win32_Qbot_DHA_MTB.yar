
rule Trojan_Win32_Qbot_DHA_MTB{
	meta:
		description = "Trojan:Win32/Qbot.DHA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {01 f8 88 c2 0f b6 c2 66 8b 7c 24 90 01 01 66 69 ff 90 01 02 66 89 7c 24 90 01 01 8b 7c 24 90 01 01 8a 14 07 8b 44 24 90 01 01 35 90 01 04 8b 7c 24 90 01 01 8a 34 0f 30 f2 8b 7c 24 90 01 01 88 14 0f 90 00 } //01 00 
		$a_02_1 = {01 f8 88 c6 0f b6 c6 88 54 24 90 01 01 c7 44 24 38 90 01 04 8b 7c 24 90 01 01 8a 14 0f 8b 7c 24 90 01 01 8a 34 07 30 d6 8b 44 24 90 01 01 88 34 08 90 00 } //01 00 
		$a_02_2 = {8a 04 03 c7 44 24 90 01 05 c7 44 24 90 01 05 66 8b 5c 24 90 01 01 66 33 5c 24 90 01 01 88 44 24 90 01 01 8b 44 24 90 01 01 8a 04 38 66 89 5c 24 90 01 01 8a 64 24 90 01 01 30 e0 8b 7c 24 90 01 01 88 04 0f 90 00 } //01 00 
		$a_02_3 = {88 04 19 0f b6 14 11 8b 44 24 90 01 01 35 90 01 04 01 f2 8b 74 24 90 01 01 8b 4c 24 90 01 01 8a 0c 0e 21 fa 8b 7c 24 90 01 01 8a 2c 17 30 cd 8b 54 24 90 01 01 8b 74 24 90 01 01 88 2c 32 90 00 } //01 00 
		$a_02_4 = {0f b6 36 03 74 24 90 01 01 8b 7c 24 90 01 01 8a 1c 0f 21 c6 32 1c 32 8b 44 24 90 01 01 35 90 01 04 8b 4c 24 90 01 01 89 4c 24 90 01 01 8b 74 24 90 01 01 8b 4c 24 90 01 01 88 1c 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}