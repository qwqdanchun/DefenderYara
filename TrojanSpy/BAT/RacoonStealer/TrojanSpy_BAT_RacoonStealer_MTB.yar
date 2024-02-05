
rule TrojanSpy_BAT_RacoonStealer_MTB{
	meta:
		description = "TrojanSpy:BAT/RacoonStealer!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 6d 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 74 00 65 00 } //01 00 
		$a_01_1 = {50 00 58 00 63 00 6c 00 69 00 2e 00 7b 00 30 00 7d 00 } //01 00 
		$a_01_2 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 20 00 65 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 21 00 } //01 00 
		$a_01_3 = {45 00 78 00 69 00 74 00 69 00 6e 00 67 00 21 00 } //01 00 
		$a_01_4 = {41 00 67 00 69 00 6c 00 65 00 44 00 6f 00 74 00 4e 00 65 00 74 00 52 00 54 00 36 00 34 00 } //01 00 
		$a_01_5 = {31 00 39 00 66 00 39 00 33 00 65 00 32 00 61 00 2d 00 34 00 64 00 39 00 37 00 2d 00 34 00 65 00 30 00 63 00 2d 00 61 00 64 00 65 00 35 00 2d 00 39 00 37 00 32 00 65 00 34 00 31 00 65 00 65 00 36 00 63 00 66 00 38 00 } //01 00 
		$a_01_6 = {63 00 33 00 31 00 30 00 34 00 65 00 33 00 36 00 2d 00 39 00 37 00 31 00 63 00 2d 00 34 00 35 00 31 00 31 00 2d 00 39 00 31 00 38 00 36 00 2d 00 64 00 36 00 34 00 31 00 66 00 33 00 62 00 63 00 35 00 37 00 32 00 61 00 } //01 00 
		$a_01_7 = {5f 00 49 00 6e 00 69 00 74 00 69 00 61 00 6c 00 69 00 7a 00 65 00 36 00 34 00 } //01 00 
		$a_01_8 = {5f 00 41 00 74 00 45 00 78 00 69 00 74 00 36 00 34 00 } //00 00 
		$a_00_9 = {5d 04 00 00 9e 4d } //04 80 
	condition:
		any of ($a_*)
 
}