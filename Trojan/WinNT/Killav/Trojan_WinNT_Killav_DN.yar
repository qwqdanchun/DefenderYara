
rule Trojan_WinNT_Killav_DN{
	meta:
		description = "Trojan:WinNT/Killav.DN,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {80 38 e8 75 30 be 5d c2 00 00 66 39 70 05 75 25 8b 48 01 } //0a 00 
		$a_01_1 = {80 38 e8 75 61 be c2 04 00 00 66 39 70 05 75 56 8b 48 01 } //0a 00 
		$a_01_2 = {c7 45 fc fe ff ff ff 80 7d e7 01 8b 45 e0 74 04 0f b6 45 e7 e8 } //0a 00 
		$a_01_3 = {80 38 e8 75 3a 66 81 78 05 5d c2 75 32 8b } //0a 00 
		$a_01_4 = {80 38 e8 0f 85 84 00 00 00 66 81 78 05 c2 04 75 7c 8b } //0a 00 
		$a_01_5 = {53 65 61 72 63 68 5f 50 73 70 54 65 72 6d 69 6e 61 74 65 54 68 72 65 61 64 42 79 50 6f 69 6e 74 65 72 20 45 72 72 6f 72 } //01 00 
		$a_01_6 = {41 00 59 00 55 00 50 00 44 00 53 00 52 00 56 00 2e 00 41 00 59 00 45 00 00 00 } //01 00 
		$a_01_7 = {4e 00 53 00 56 00 4d 00 4f 00 4e 00 2e 00 4e 00 50 00 43 00 00 00 } //01 00 
		$a_01_8 = {4d 00 55 00 50 00 44 00 41 00 54 00 45 00 32 00 2e 00 45 00 58 00 45 00 00 00 } //01 00 
		$a_01_9 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 41 00 56 00 53 00 61 00 46 00 65 00 53 00 76 00 63 00 00 00 } //00 00 
		$a_00_10 = {5d 04 00 00 8c 2c 03 80 5c 20 00 00 } //8d 2c 
	condition:
		any of ($a_*)
 
}