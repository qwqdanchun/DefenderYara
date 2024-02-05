
rule Trojan_Win32_Emotetcrypt_EE_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.EE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0d 00 00 0a 00 "
		
	strings :
		$a_00_0 = {6a 04 68 00 30 00 00 6a 0a 6a 00 8b 45 08 8b 48 18 ff d1 } //0a 00 
		$a_81_1 = {6f 37 68 31 7a 70 38 78 66 62 2e 64 6c 6c } //0a 00 
		$a_81_2 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_81_3 = {76 73 35 78 78 63 33 72 69 36 77 35 64 36 62 } //01 00 
		$a_81_4 = {79 6d 61 6d 38 37 66 64 72 31 34 76 63 77 37 34 6c 72 34 30 62 67 } //01 00 
		$a_81_5 = {69 31 6e 78 71 31 6b 30 6b 38 32 72 61 74 72 6c 6a 6d 73 65 78 36 70 71 33 6a } //01 00 
		$a_81_6 = {77 66 38 6e 67 61 31 7a 38 6e 31 66 34 35 75 6b 36 } //01 00 
		$a_81_7 = {61 6a 62 36 75 75 6a 6d 62 61 37 6c 6a 6f 62 75 70 6f 79 65 78 31 6e 35 } //01 00 
		$a_81_8 = {64 33 78 71 7a 30 72 6d 63 35 61 68 67 33 36 74 36 74 69 77 39 6d 35 34 63 62 } //01 00 
		$a_81_9 = {6d 61 6a 36 6e 67 6a 71 65 31 34 34 71 75 74 7a 6d 70 72 37 68 72 6a 72 33 73 } //01 00 
		$a_81_10 = {77 6b 78 78 35 63 37 75 68 73 77 62 77 61 74 6a 33 62 33 64 6d 72 78 33 39 64 7a 31 65 } //01 00 
		$a_81_11 = {6d 77 70 6a 68 30 71 37 38 71 30 75 38 62 63 74 6f 30 75 36 6b 6b 6b 68 6e 75 74 7a 63 } //01 00 
		$a_81_12 = {65 78 33 6c 30 74 79 64 72 38 77 6d 36 6d 71 35 6e 31 69 31 72 6b 7a 38 34 79 79 } //00 00 
	condition:
		any of ($a_*)
 
}