
rule TrojanDownloader_BAT_Vomsaload_A{
	meta:
		description = "TrojanDownloader:BAT/Vomsaload.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 00 6b 00 53 00 4d 00 75 00 6f 00 47 00 58 00 4d 00 72 00 61 00 76 00 68 00 79 00 31 00 4d 00 57 00 79 00 73 00 39 00 54 00 61 00 50 00 48 00 62 00 4d 00 6b 00 45 00 37 00 46 00 74 00 59 00 50 00 4b 00 78 00 59 00 2f 00 67 00 33 00 54 00 6e 00 5a 00 34 00 3d 00 } //01 00 
		$a_01_1 = {51 00 43 00 53 00 61 00 67 00 37 00 67 00 65 00 44 00 70 00 44 00 61 00 42 00 4f 00 46 00 74 00 35 00 44 00 67 00 69 00 52 00 47 00 6a 00 4c 00 2f 00 5a 00 6c 00 4e 00 71 00 55 00 54 00 6b 00 6d 00 53 00 4e 00 6f 00 2b 00 4b 00 6a 00 69 00 47 00 44 00 30 00 3d 00 } //01 00 
		$a_01_2 = {36 00 79 00 67 00 64 00 49 00 68 00 5a 00 39 00 6b 00 6b 00 4f 00 69 00 71 00 74 00 56 00 33 00 6f 00 74 00 66 00 6e 00 6d 00 51 00 3d 00 3d 00 } //01 00 
		$a_01_3 = {74 00 56 00 4e 00 6e 00 77 00 54 00 6b 00 62 00 6e 00 66 00 68 00 7a 00 69 00 43 00 33 00 36 00 34 00 59 00 55 00 47 00 36 00 62 00 67 00 79 00 5a 00 62 00 62 00 6b 00 7a 00 6f 00 62 00 76 00 50 00 4d 00 6b 00 62 00 44 00 59 00 43 00 52 00 4c 00 70 00 6b 00 3d 00 } //01 00 
		$a_01_4 = {38 00 72 00 4b 00 6f 00 47 00 58 00 6b 00 52 00 47 00 33 00 4d 00 38 00 38 00 55 00 70 00 2f 00 4c 00 55 00 79 00 77 00 4f 00 4f 00 58 00 39 00 67 00 47 00 7a 00 4c 00 68 00 49 00 73 00 53 00 63 00 35 00 79 00 77 00 41 00 46 00 49 00 46 00 63 00 2b 00 54 00 39 00 79 00 62 00 64 00 46 00 7a 00 36 00 36 00 2b 00 73 00 74 00 39 00 65 00 36 00 4f 00 76 00 57 00 63 00 66 00 71 00 35 00 } //00 00 
		$a_00_5 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}