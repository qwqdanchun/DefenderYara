
rule TrojanDownloader_BAT_AgentTesla_AM_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.AM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 00 32 00 2e 00 31 00 39 00 37 00 2e 00 31 00 33 00 36 00 2e 00 36 00 34 00 3a 00 38 00 30 00 38 00 32 00 2f 00 6f 00 73 00 5f 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {50 00 6f 00 6c 00 69 00 63 00 79 00 52 00 69 00 67 00 68 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {55 00 32 00 68 00 68 00 63 00 6e 00 42 00 61 00 61 00 58 00 42 00 4d 00 61 00 57 00 49 00 75 00 55 00 32 00 68 00 68 00 63 00 6e 00 42 00 53 00 5a 00 58 00 42 00 76 00 63 00 32 00 6c 00 30 00 62 00 33 00 4a 00 35 00 } //01 00 
		$a_01_3 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //01 00 
		$a_03_4 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2f 00 64 00 69 00 73 00 70 00 75 00 74 00 65 00 64 00 2e 00 74 00 78 00 74 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}