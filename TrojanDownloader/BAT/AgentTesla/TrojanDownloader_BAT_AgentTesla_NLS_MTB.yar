
rule TrojanDownloader_BAT_AgentTesla_NLS_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.NLS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,47 00 47 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 16 00 00 0a 25 72 01 00 00 70 6f 17 00 00 0a 00 25 72 09 00 00 70 6f 18 00 00 0a 00 25 17 6f 19 00 00 0a 00 28 1a 00 00 0a 26 23 00 00 00 00 00 00 34 40 28 1b 00 00 0a 28 1c 00 00 0a 00 2a } //0a 00 
		$a_01_1 = {28 03 00 00 06 00 28 04 00 00 06 00 28 06 00 00 06 26 16 0a 2b 00 06 2a } //0a 00 
		$a_80_2 = {39 31 2e 32 34 33 2e 34 34 2e 31 } //91.243.44.1  0a 00 
		$a_80_3 = {52 65 76 65 72 73 65 } //Reverse  0a 00 
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //0a 00 
		$a_01_5 = {47 65 74 54 79 70 65 73 } //0a 00 
		$a_01_6 = {49 6e 74 65 72 6e 65 74 } //01 00 
		$a_80_7 = {4e 77 68 62 6d 6b 64 67 6a 76 77 74 63 75 64 73 77 76 } //Nwhbmkdgjvwtcudswv  01 00 
		$a_80_8 = {56 69 61 66 72 62 6b 77 79 79 } //Viafrbkwyy  01 00 
		$a_80_9 = {49 76 64 6d 64 78 65 77 69 72 } //Ivdmdxewir  01 00 
		$a_80_10 = {5a 69 70 75 76 6d 76 6b 6d 67 77 74 78 77 68 64 79 76 78 6c 70 70 6b } //Zipuvmvkmgwtxwhdyvxlppk  00 00 
	condition:
		any of ($a_*)
 
}