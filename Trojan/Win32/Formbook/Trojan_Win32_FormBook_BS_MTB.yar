
rule Trojan_Win32_FormBook_BS_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {04 00 02 80 c7 45 90 01 01 0a 00 00 00 c7 45 90 01 01 04 00 02 80 c7 45 90 01 01 0a 00 00 00 90 00 } //01 00 
		$a_00_1 = {56 00 41 00 4c 00 66 00 73 00 47 00 45 00 67 00 45 00 4b 00 52 00 4e 00 51 00 31 00 43 00 57 00 6c 00 30 00 79 00 46 00 4c 00 32 00 4a 00 42 00 54 00 62 00 5a 00 5a 00 76 00 6f 00 79 00 5a 00 43 00 53 00 50 00 65 00 31 00 35 00 39 00 } //01 00 
		$a_00_2 = {6d 00 4f 00 67 00 65 00 6b 00 61 00 43 00 34 00 63 00 79 00 46 00 79 00 66 00 66 00 72 00 31 00 49 00 78 00 4d 00 78 00 48 00 31 00 34 00 33 00 } //01 00 
		$a_00_3 = {72 00 70 00 37 00 6b 00 61 00 58 00 79 00 58 00 42 00 51 00 71 00 31 00 49 00 51 00 4a 00 75 00 70 00 4b 00 6c 00 50 00 34 00 55 00 42 00 35 00 70 00 51 00 64 00 31 00 37 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FormBook_BS_MTB_2{
	meta:
		description = "Trojan:Win32/FormBook.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 4e 00 44 00 56 00 45 00 4e 00 44 00 49 00 4e 00 47 00 45 00 52 00 46 00 52 00 49 00 54 00 54 00 45 00 4e 00 44 00 45 00 42 00 45 00 53 00 56 00 52 00 4c 00 49 00 47 00 47 00 4a 00 4f 00 52 00 54 00 45 00 53 00 4c 00 41 00 41 00 45 00 4e 00 42 00 55 00 53 00 4b 00 45 00 4e 00 52 00 41 00 50 00 55 00 4e 00 } //01 00 
		$a_01_1 = {45 00 73 00 4e 00 39 00 53 00 76 00 48 00 43 00 66 00 6e 00 6d 00 58 00 7a 00 48 00 50 00 78 00 31 00 59 00 6b 00 6b 00 31 00 32 00 63 00 51 00 6e 00 79 00 63 00 6c 00 43 00 55 00 33 00 66 00 4b 00 65 00 61 00 55 00 31 00 32 00 39 00 } //01 00 
		$a_01_2 = {70 00 72 00 6f 00 74 00 65 00 67 00 65 00 65 00 72 00 73 00 61 00 67 00 6c 00 61 00 68 00 6d 00 6f 00 73 00 74 00 61 00 73 00 65 00 68 00 6a 00 6f 00 72 00 74 00 65 00 6b 00 61 00 6c 00 76 00 65 00 6e 00 65 00 75 00 6c 00 74 00 69 00 6d 00 75 00 6d 00 } //01 00 
		$a_01_3 = {44 00 4f 00 47 00 41 00 4e 00 41 00 53 00 43 00 48 00 45 00 44 00 55 00 4c 00 49 00 5a 00 45 00 46 00 4f 00 52 00 54 00 59 00 53 00 4b 00 45 00 53 00 4f 00 55 00 54 00 44 00 57 00 45 00 4c 00 4c 00 45 00 52 00 46 00 49 00 4e 00 4e 00 55 00 52 00 52 00 45 00 4c 00 41 00 54 00 } //01 00 
		$a_01_4 = {5a 00 57 00 6c 00 33 00 36 00 76 00 34 00 4d 00 70 00 70 00 31 00 38 00 } //01 00 
		$a_00_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}