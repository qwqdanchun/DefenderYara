
rule Trojan_Win32_FormBook_CJ_MTB{
	meta:
		description = "Trojan:Win32/FormBook.CJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 00 72 00 61 00 70 00 68 00 69 00 74 00 65 00 72 00 34 00 } //01 00 
		$a_01_1 = {65 00 63 00 6f 00 6c 00 6f 00 67 00 69 00 63 00 61 00 6c 00 6c 00 79 00 } //01 00 
		$a_01_2 = {55 00 6e 00 64 00 73 00 6c 00 69 00 70 00 70 00 65 00 6c 00 73 00 65 00 } //01 00 
		$a_01_3 = {4f 00 70 00 67 00 61 00 76 00 65 00 66 00 6f 00 72 00 64 00 65 00 6c 00 69 00 6e 00 67 00 65 00 6e 00 73 00 38 00 } //01 00 
		$a_01_4 = {65 00 6e 00 68 00 65 00 64 00 73 00 73 00 6b 00 6f 00 6c 00 65 00 6e 00 73 00 } //01 00 
		$a_01_5 = {4e 00 6f 00 6e 00 66 00 6c 00 75 00 35 00 } //01 00 
		$a_01_6 = {4c 00 53 00 4e 00 49 00 4e 00 47 00 45 00 4e 00 } //01 00 
		$a_01_7 = {41 00 75 00 74 00 6f 00 6d 00 61 00 74 00 69 00 73 00 65 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_01_8 = {64 00 79 00 62 00 62 00 6a 00 65 00 72 00 67 00 61 00 72 00 74 00 65 00 72 00 6e 00 65 00 } //01 00 
		$a_01_9 = {6d 00 61 00 6e 00 64 00 73 00 6d 00 6f 00 64 00 } //01 00 
		$a_01_10 = {63 00 68 00 69 00 63 00 6b 00 65 00 6e 00 62 00 69 00 6c 00 6c 00 } //01 00 
		$a_01_11 = {57 00 61 00 64 00 6d 00 61 00 6c 00 32 00 } //01 00 
		$a_00_12 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}