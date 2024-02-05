
rule Trojan_Win32_Lokibot_VAL_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.VAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 01 00 "
		
	strings :
		$a_81_0 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_1 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_2 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //01 00 
		$a_81_3 = {43 6f 6d 70 61 72 65 53 74 72 69 6e 67 } //01 00 
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //01 00 
		$a_81_5 = {24 63 62 38 62 34 36 65 39 2d 30 62 39 35 2d 34 38 38 35 2d 39 31 64 34 2d 33 33 64 66 36 62 64 37 33 36 63 35 } //01 00 
		$a_81_6 = {53 69 6d 70 6c 65 50 61 73 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_7 = {53 69 6d 70 6c 65 50 61 73 73 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_8 = {53 69 6d 70 6c 65 50 61 73 73 2e 46 6f 72 6d 32 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_9 = {53 69 6d 70 6c 65 50 61 73 73 2e 51 75 6f 74 61 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_10 = {53 69 6d 70 6c 65 50 61 73 73 2e 44 61 73 68 62 6f 61 72 64 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_11 = {53 69 6d 70 6c 65 50 61 73 73 2e 53 65 61 72 63 68 50 61 73 73 77 6f 72 64 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_12 = {53 69 6d 70 6c 65 50 61 73 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_13 = {53 69 6d 70 6c 65 50 61 73 73 2e 41 62 6f 75 74 53 69 6d 70 6c 65 50 61 73 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_14 = {53 69 6d 70 6c 65 50 61 73 73 2e 4e 65 77 41 63 63 6f 75 6e 74 2e 72 65 73 6f 75 72 63 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}