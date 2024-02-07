
rule Trojan_Win64_Trickbot_SH{
	meta:
		description = "Trojan:Win64/Trickbot.SH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 8b 5a 40 49 8b 7a 38 49 8b 5a 30 4d 8b 4a 28 4d 8b 42 20 49 8b 4a 10 49 8b 52 18 } //01 00 
		$a_03_1 = {48 89 44 24 38 4c 89 5c 24 30 48 89 7c 24 28 48 89 5c 24 20 eb 56 90 02 60 ff 12 90 00 } //01 00 
		$a_01_2 = {48 89 86 a8 00 00 00 c7 46 58 00 00 00 00 48 8b 4e 08 ff 56 30 48 8b 0e 48 8b 56 08 41 b8 ff ff ff ff 45 33 c9 ff 56 18 } //01 00 
		$a_01_3 = {48 8b 0e 48 8b 56 08 45 33 c0 45 33 c9 ff 56 18 48 8b 0e ff 56 28 48 c7 06 00 00 00 00 48 8b 4e 08 ff 56 28 48 c7 46 08 00 00 00 00 33 c9 ff 56 38 } //00 00 
		$a_00_4 = {78 43 } //02 00  xC
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Trickbot_SH_2{
	meta:
		description = "Trojan:Win64/Trickbot.SH,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 8b 58 50 48 8b 78 48 4c 8b 50 40 4c 8b 58 38 4c 8b 70 30 4c 8b 48 28 4c 8b 40 20 48 8b 48 10 48 8b 50 18 } //01 00 
		$a_03_1 = {48 89 5c 24 40 48 89 7c 24 38 4c 89 54 24 30 4c 89 5c 24 28 4c 89 74 24 20 eb 50 90 02 60 ff 10 90 00 } //01 00 
		$a_01_2 = {4c 8b 50 50 4c 8b 58 48 48 8b 78 40 48 8b 58 38 4c 8b 70 30 4c 8b 48 28 4c 8b 40 20 48 8b 48 10 48 8b 50 18 } //01 00 
		$a_03_3 = {4c 89 54 24 40 4c 89 5c 24 38 48 89 7c 24 30 48 89 5c 24 28 4c 89 74 24 20 eb 50 90 02 60 ff 10 90 00 } //01 00 
		$a_01_4 = {48 8b 58 48 48 8b 78 40 4c 8b 50 38 4c 8b 58 30 4c 8b 48 28 4c 8b 40 20 48 8b 48 10 48 8b 50 18 48 89 5c 24 38 48 89 7c 24 30 4c 89 54 24 28 4c 89 5c 24 20 ff 10 } //01 00 
		$a_01_5 = {4c 8b 50 48 4c 8b 58 40 48 8b 78 38 48 8b 58 30 4c 8b 48 28 4c 8b 40 20 48 8b 48 10 48 8b 50 18 4c 89 54 24 38 4c 89 5c 24 30 48 89 7c 24 28 48 89 5c 24 20 ff 10 } //01 00 
		$a_01_6 = {4c 8b 40 20 48 8b 48 10 48 8b 50 18 ff 10 eb 36 } //01 00 
		$a_01_7 = {48 8b 0e 48 8b 56 08 45 33 c0 45 33 c9 ff 56 18 48 8b 4e 08 ff 56 28 48 c7 46 08 00 00 00 00 48 8b 0e ff 56 28 48 c7 06 00 00 00 00 33 c9 ff 56 38 } //01 00 
		$a_01_8 = {48 8b 0e 48 8b 56 08 45 33 c0 45 33 c9 ff 56 18 48 8b 4e 08 ff 56 28 48 8b 0e ff 56 28 48 c7 46 08 00 00 00 00 48 c7 06 00 00 00 00 33 c9 ff 56 38 } //01 00 
		$a_01_9 = {48 83 e4 f0 48 8b 75 50 48 85 f6 74 40 48 8b 45 48 8b 4d 40 48 89 56 70 4c 89 46 78 4c 89 8e 80 00 00 00 } //01 00 
		$a_01_10 = {8b c9 48 89 8e 88 00 00 00 48 89 86 90 00 00 00 48 89 b6 98 00 00 00 48 8b 4e 10 ff 56 30 48 8b 4e 10 ba ff ff ff ff ff 56 20 } //01 00 
		$a_01_11 = {48 83 e4 f0 48 8b 75 50 48 85 f6 74 40 48 8b 45 48 8b 4d 40 4c 89 8e 80 00 00 00 8b c9 } //01 00 
		$a_01_12 = {48 89 8e 88 00 00 00 48 89 56 70 4c 89 46 78 48 89 86 90 00 00 00 48 89 b6 98 00 00 00 48 8b 4e 10 ff 56 30 48 8b 4e 10 ba ff ff ff ff ff 56 20 } //00 00 
		$a_00_13 = {5d 04 00 } //00 6a 
	condition:
		any of ($a_*)
 
}