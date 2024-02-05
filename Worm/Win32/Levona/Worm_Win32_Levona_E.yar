
rule Worm_Win32_Levona_E{
	meta:
		description = "Worm:Win32/Levona.E,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 6f 72 72 79 2c 20 53 61 79 61 20 6c 75 70 61 20 6e 69 68 20 3a 29 } //01 00 
		$a_01_1 = {31 37 20 54 61 68 75 6e 20 4b 65 61 74 61 73 } //01 00 
		$a_00_2 = {4e 6f 76 61 2e 73 63 72 } //01 00 
		$a_00_3 = {41 56 50 33 32 2e 45 58 45 } //01 00 
		$a_00_4 = {5a 41 4e 41 52 4b 41 4e 44 2e 45 58 45 } //01 00 
		$a_00_5 = {4d 41 50 49 53 65 6e 64 4d 61 69 6c } //01 00 
		$a_00_6 = {52 65 6e 6f 76 61 5f 45 6d 69 72 61 } //00 00 
	condition:
		any of ($a_*)
 
}