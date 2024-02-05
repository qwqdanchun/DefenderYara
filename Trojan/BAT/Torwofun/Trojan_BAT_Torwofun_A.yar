
rule Trojan_BAT_Torwofun_A{
	meta:
		description = "Trojan:BAT/Torwofun.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0c 00 00 04 00 "
		
	strings :
		$a_01_0 = {28 00 53 00 79 00 73 00 74 00 65 00 6d 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 7c 00 6e 00 6f 00 64 00 65 00 2d 00 77 00 65 00 62 00 6b 00 69 00 74 00 7c 00 55 00 6e 00 4c 00 6f 00 61 00 64 00 7c 00 } //04 00 
		$a_01_1 = {54 00 6f 00 72 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 7c 00 74 00 6f 00 72 00 7c 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 7c 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 4d 00 6f 00 6e 00 65 00 79 00 29 00 } //04 00 
		$a_01_2 = {7c 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 7c 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 4d 00 6f 00 6e 00 65 00 79 00 7c 00 5c 00 5c 00 74 00 6f 00 72 00 7c 00 5c 00 5c 00 54 00 65 00 6d 00 70 00 } //04 00 
		$a_01_3 = {7c 00 31 00 35 00 36 00 2e 00 31 00 35 00 34 00 2e 00 37 00 31 00 2e 00 31 00 7c 00 31 00 39 00 33 00 2e 00 35 00 38 00 2e 00 32 00 35 00 31 00 2e 00 32 00 35 00 31 00 7c 00 31 00 39 00 38 00 2e 00 31 00 35 00 33 00 2e 00 31 00 39 00 28 00 32 00 7c 00 34 00 29 00 2e 00 31 00 7c 00 } //04 00 
		$a_01_4 = {51 00 69 00 70 00 47 00 75 00 61 00 72 00 64 00 2e 00 65 00 78 00 65 00 7c 00 43 00 6c 00 69 00 70 00 32 00 4e 00 65 00 74 00 5c 00 5c 00 43 00 6c 00 69 00 70 00 32 00 4e 00 65 00 74 00 2e 00 65 00 78 00 65 00 7c 00 51 00 49 00 50 00 20 00 32 00 30 00 31 00 32 00 5c 00 5c 00 71 00 69 00 70 00 2e 00 65 00 78 00 65 00 7c 00 53 00 79 00 6e 00 54 00 50 00 } //04 00 
		$a_01_5 = {5c 00 53 00 68 00 69 00 6d 00 49 00 6e 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 4c 00 69 00 73 00 74 00 5c 00 61 00 6d 00 69 00 67 00 6f 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_6 = {53 00 79 00 73 00 74 00 65 00 6d 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_7 = {5c 00 41 00 6d 00 69 00 67 00 6f 00 44 00 69 00 73 00 74 00 72 00 69 00 62 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_8 = {5c 00 4d 00 61 00 69 00 6c 00 52 00 75 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_9 = {55 00 70 00 64 00 61 00 74 00 65 00 5c 00 55 00 6e 00 4c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_10 = {44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 42 00 44 00 4d 00 57 00 72 00 65 00 6e 00 63 00 68 00 5f 00 78 00 36 00 34 00 2e 00 73 00 79 00 73 00 } //01 00 
		$a_01_11 = {44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 42 00 44 00 45 00 6e 00 68 00 61 00 6e 00 63 00 65 00 42 00 6f 00 6f 00 73 00 74 00 2e 00 73 00 79 00 73 00 } //00 00 
		$a_00_12 = {5d 04 00 00 37 34 03 80 } //5c 1e 
	condition:
		any of ($a_*)
 
}