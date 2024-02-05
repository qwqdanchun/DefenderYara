
rule Trojan_BAT_AgentTesla_NIR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 27 42 22 70 70 7c 70 70 70 70 74 70 70 70 70 5e 5e 67 70 70 7b 38 70 70 70 70 70 70 70 70 70 22 70 70 70 70 70 70 } //01 00 
		$a_01_1 = {70 63 37 46 38 63 70 45 70 3f 7d 78 33 38 71 25 7c 5f 39 27 76 39 41 34 4a 71 48 34 3e 68 3f 34 3e 75 45 78 76 7d 39 33 3e 64 47 35 72 71 3a 2b 24 71 4a 35 28 } //01 00 
		$a_01_2 = {73 22 5f 7a 79 70 70 70 70 70 70 70 70 70 71 22 23 22 70 70 25 70 74 73 70 73 72 32 72 28 78 70 70 70 70 70 70 70 70 70 70 7e 70 70 73 3a 74 7b 70 22 2a 70 70 } //01 00 
		$a_01_3 = {64 70 76 35 3d 35 75 68 2a 70 76 35 3d 35 75 68 2b 70 74 27 49 35 28 75 44 34 48 71 47 35 76 39 3d 34 38 71 47 2a 3e 40 70 23 61 27 5f 24 76 75 4b } //01 00 
		$a_01_4 = {24 30 39 65 37 34 37 32 65 2d 39 66 32 38 2d 34 35 65 64 2d 62 33 39 65 2d 66 39 66 37 37 63 31 38 62 35 39 33 } //01 00 
		$a_01_5 = {72 3f 62 38 70 70 70 7a 71 38 7d 68 62 48 70 70 72 38 2a 73 36 48 34 71 70 70 41 68 71 48 74 70 72 38 7c 29 37 22 34 71 70 70 40 73 70 38 7d 66 63 70 } //01 00 
		$a_01_6 = {78 26 78 70 74 27 74 40 73 22 70 39 7c 70 74 48 74 27 74 40 73 22 70 39 7c 70 74 48 74 7c 78 70 74 72 75 } //01 00 
		$a_01_7 = {7c 38 62 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 } //01 00 
		$a_01_8 = {4b 6f 72 61 2e 56 69 73 75 61 6c } //01 00 
		$a_01_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_10 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}