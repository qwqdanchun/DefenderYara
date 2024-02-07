
rule PWS_Win64_Hesperbot_A{
	meta:
		description = "PWS:Win64/Hesperbot.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 bb 3b a7 ca 84 85 ae 67 bb 49 bf 08 c9 bc f3 67 e6 09 6a 48 bf 2b f8 94 fe 72 f3 6e 3c } //01 00 
		$a_01_1 = {48 b9 f1 36 1d 5f 3a f5 4f a5 49 8b c6 48 89 4c 24 48 48 b9 d1 82 e6 ad 7f 52 0e 51 48 89 5c 24 38 } //01 00 
		$a_01_2 = {4c 2b c0 8b d6 48 8d 4c 14 39 48 ff c2 41 0f b6 04 08 88 01 48 83 fa 04 72 eb } //02 00 
		$a_01_3 = {68 76 6e 63 5f 6d 6f 64 5f 78 36 34 2e 6d 6f 64 00 6d 6f 64 5f 65 6e 74 72 79 } //01 00  癨据浟摯硟㐶洮摯洀摯敟瑮祲
		$a_03_4 = {bf 1b b9 2f 91 4c 8d 05 90 01 04 8b d3 8b cf 66 39 15 90 01 04 74 0a 48 ff c2 66 41 39 1c 50 75 f6 90 00 } //01 00 
		$a_01_5 = {b9 54 12 12 95 4c 8b cb 48 c7 44 24 20 10 00 00 00 41 ff 52 38 48 8b c3 48 83 c4 30 5b c3 } //01 00 
		$a_01_6 = {0f 84 51 01 00 00 41 0f b7 c0 bf 01 00 00 00 83 c0 9c 83 f8 12 0f 87 3a 01 00 00 4c 8d 05 91 a1 ff ff } //01 00 
		$a_01_7 = {49 8b c3 49 f7 e0 49 8b c0 49 ff c0 48 c1 ea 05 48 6b d2 36 48 2b c2 0f b6 04 38 41 32 04 0a 88 01 4d 3b c1 72 d5 } //01 00 
		$a_01_8 = {49 8b c0 48 c1 f8 05 83 e1 1f 49 8b 04 c2 48 6b c9 58 4c 8b 14 01 49 83 fa ff 74 0b } //00 00 
		$a_00_9 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}