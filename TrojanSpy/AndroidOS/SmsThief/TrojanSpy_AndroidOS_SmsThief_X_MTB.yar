
rule TrojanSpy_AndroidOS_SmsThief_X_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmsThief.X!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 61 76 65 20 75 73 65 72 20 69 6e 66 6f } //01 00 
		$a_00_1 = {70 68 6f 6e 65 69 6e 66 6f 53 65 72 76 69 63 65 } //01 00 
		$a_00_2 = {4d 79 43 6f 6e 74 61 63 74 44 65 74 61 69 6c } //01 00 
		$a_00_3 = {73 61 76 65 41 70 70 49 6e 66 6f } //01 00 
		$a_00_4 = {70 68 6f 6e 65 69 6e 66 6f 2e 72 61 63 65 2e 66 7a 6d 2e 63 6f 6d 2e 70 68 6f 6e 65 69 6e 66 6f } //01 00 
		$a_00_5 = {47 65 74 50 68 6f 6e 65 4c 69 73 74 } //01 00 
		$a_00_6 = {67 65 74 53 65 6e 64 53 6d 73 4e 61 6d 65 } //01 00 
		$a_00_7 = {74 74 70 3a 2f 2f 34 37 2e 39 32 2e 33 30 2e 39 36 3a 38 30 38 39 2f } //00 00 
	condition:
		any of ($a_*)
 
}