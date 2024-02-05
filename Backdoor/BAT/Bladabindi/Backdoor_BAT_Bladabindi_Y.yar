
rule Backdoor_BAT_Bladabindi_Y{
	meta:
		description = "Backdoor:BAT/Bladabindi.Y,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {1f 7c 9d 06 90 01 04 1b 17 1f 27 9d 06 90 01 04 1b 18 1f 7c 9d 06 90 01 04 1b 19 1f 27 9d 06 90 01 04 1b 1a 1f 7c 90 00 } //0a 00 
		$a_03_1 = {1f 5b 9d 06 90 01 04 1b 17 1f 65 9d 06 90 01 04 1b 18 1f 6e 9d 06 90 01 04 1b 19 1f 64 9d 06 90 01 04 1b 1a 1f 6f 9d 06 90 01 04 1b 1b 1f 66 9d 06 90 01 04 1b 1c 1f 5d 90 00 } //01 00 
		$a_01_2 = {00 41 00 77 00 } //01 00 
		$a_01_3 = {00 57 4c 00 44 4c 56 00 6e 00 } //01 00 
		$a_01_4 = {00 44 4c 56 00 6e 00 47 54 56 00 53 54 56 00 74 00 } //01 00 
		$a_01_5 = {00 6b 6c 00 4b 65 79 73 00 4c 6f 67 73 00 } //01 00 
		$a_01_6 = {00 47 65 74 4b 65 79 00 6b 65 79 00 70 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}