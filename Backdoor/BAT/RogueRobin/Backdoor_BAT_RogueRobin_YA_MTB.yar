
rule Backdoor_BAT_RogueRobin_YA_MTB{
	meta:
		description = "Backdoor:BAT/RogueRobin.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 24 00 66 00 69 00 6c 00 65 00 55 00 70 00 6c 00 6f 00 61 00 64 00 } //01 00 
		$a_01_1 = {5c 00 24 00 43 00 6c 00 65 00 61 00 72 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 73 00 } //01 00 
		$a_01_2 = {2d 00 55 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_3 = {2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 65 00 78 00 65 00 63 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 7b 00 30 00 7d 00 } //01 00 
		$a_01_4 = {67 00 77 00 6d 00 69 00 20 00 2d 00 71 00 75 00 65 00 72 00 79 00 20 00 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 77 00 69 00 6e 00 33 00 32 00 5f 00 42 00 49 00 4f 00 53 00 20 00 77 00 68 00 65 00 72 00 65 00 20 00 53 00 4d 00 42 00 49 00 4f 00 53 00 42 00 49 00 4f 00 53 00 56 00 45 00 52 00 53 00 49 00 4f 00 4e 00 20 00 4c 00 49 00 4b 00 45 00 } //01 00 
		$a_01_5 = {63 00 61 00 6e 00 6f 00 6e 00 69 00 63 00 61 00 6c 00 20 00 6e 00 61 00 6d 00 65 00 7c 00 6d 00 78 00 7c 00 6e 00 61 00 6d 00 65 00 72 00 73 00 65 00 72 00 76 00 65 00 72 00 7c 00 6d 00 61 00 69 00 6c 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 7c 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}