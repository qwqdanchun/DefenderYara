
rule PWS_BAT_OnLineGames_NW_bit{
	meta:
		description = "PWS:BAT/OnLineGames.NW!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 67 00 72 00 6f 00 77 00 74 00 6f 00 70 00 69 00 61 00 5c 00 73 00 61 00 76 00 65 00 2e 00 64 00 61 00 74 00 } //01 00  \growtopia\save.dat
		$a_00_1 = {5c 00 54 00 45 00 4d 00 50 00 5c 00 7a 00 31 00 2e 00 74 00 78 00 74 00 } //02 00  \TEMP\z1.txt
		$a_03_2 = {2e 00 74 00 78 00 74 00 90 01 02 73 00 6d 00 74 00 70 00 2e 00 90 01 02 67 00 6d 00 61 00 69 00 6c 00 90 01 02 2e 00 63 00 6f 00 6d 00 90 00 } //01 00 
		$a_03_3 = {5c 50 72 6f 6a 65 63 74 73 5c 43 6f 6e 73 6f 6c 65 41 70 70 6c 69 63 61 74 69 6f 6e 90 02 02 5c 43 6f 6e 73 6f 6c 65 41 70 70 6c 69 63 61 74 69 6f 6e 90 02 02 5c 6f 62 6a 5c 44 65 62 75 67 5c 43 6f 6e 73 6f 6c 65 41 70 70 6c 69 63 61 74 69 6f 6e 90 02 02 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}