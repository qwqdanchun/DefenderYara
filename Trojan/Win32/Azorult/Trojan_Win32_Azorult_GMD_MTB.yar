
rule Trojan_Win32_Azorult_GMD_MTB{
	meta:
		description = "Trojan:Win32/Azorult.GMD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 6c 00 65 00 63 00 74 00 72 00 75 00 6d 00 5c 00 77 00 61 00 6c 00 6c 00 65 00 74 00 73 00 } //01 00 
		$a_01_1 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 2e 00 65 00 78 00 65 00 20 00 33 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //01 00 
		$a_01_2 = {50 61 73 73 77 6f 72 64 73 4c 69 73 74 2e 74 78 74 } //01 00 
		$a_01_3 = {73 63 72 2e 6a 70 67 } //01 00 
		$a_01_4 = {69 70 2e 74 78 74 } //01 00 
		$a_01_5 = {53 79 73 74 65 6d 2e 74 78 74 } //01 00 
		$a_01_6 = {43 00 6f 00 69 00 6e 00 73 00 5c 00 45 00 74 00 68 00 65 00 72 00 65 00 75 00 6d 00 } //01 00 
		$a_01_7 = {45 00 74 00 68 00 65 00 72 00 65 00 75 00 6d 00 5c 00 6b 00 65 00 79 00 73 00 74 00 6f 00 72 00 65 00 } //01 00 
		$a_01_8 = {43 00 6f 00 69 00 6e 00 73 00 5c 00 45 00 78 00 6f 00 64 00 75 00 73 00 } //01 00 
		$a_01_9 = {54 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 20 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 74 00 64 00 61 00 74 00 61 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}