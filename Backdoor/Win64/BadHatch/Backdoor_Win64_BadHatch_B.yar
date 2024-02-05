
rule Backdoor_Win64_BadHatch_B{
	meta:
		description = "Backdoor:Win64/BadHatch.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {46 61 69 6c 65 64 20 74 6f 20 65 78 65 63 75 74 65 20 43 56 45 20 64 6c 6c 20 66 72 6f 6d 20 6d 65 6d 6f 72 79 2c 20 65 72 90 01 01 6f 72 20 25 75 90 00 } //01 00 
		$a_03_1 = {46 61 69 6c 65 64 20 74 6f 20 75 70 6c 6f 61 64 20 73 63 72 65 65 6e 73 68 6f 74 2c 20 65 72 72 6f 90 01 01 20 25 75 90 00 } //01 00 
		$a_03_2 = {46 61 69 6c 65 64 20 74 6f 20 6c 6f 61 64 20 50 53 20 6d 6f 64 75 6c 65 2c 20 65 72 72 6f 90 01 01 20 25 75 90 00 } //01 00 
		$a_03_3 = {50 6c 65 61 73 65 20 75 70 6c 6f 61 64 20 90 04 02 04 32 33 34 36 2d 62 69 74 20 44 4c 90 01 01 20 66 69 6c 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}