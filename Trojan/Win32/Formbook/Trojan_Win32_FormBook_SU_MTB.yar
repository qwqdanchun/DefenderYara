
rule Trojan_Win32_FormBook_SU_MTB{
	meta:
		description = "Trojan:Win32/FormBook.SU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 03 00 "
		
	strings :
		$a_00_0 = {0f 6e da 85 d2 eb 02 00 00 31 f1 85 db c3 } //03 00 
		$a_00_1 = {0f 6e da 66 81 fb 07 d4 31 f1 81 fa 45 26 3c 05 c3 } //03 00 
		$a_00_2 = {0f 6e da 81 fb 35 96 13 30 31 f1 85 db c3 } //03 00 
		$a_00_3 = {0f 6e da 81 ff 12 d3 36 44 31 f1 eb 05 00 00 00 00 00 66 85 c0 } //01 00 
		$a_01_4 = {69 00 5a 00 54 00 66 00 61 00 4f 00 6e 00 36 00 50 00 71 00 31 00 59 00 38 00 35 00 44 00 48 00 42 00 30 00 35 00 57 00 68 00 56 00 4c 00 53 00 4c 00 4f 00 68 00 31 00 7a 00 58 00 6e 00 6e 00 49 00 39 00 37 00 30 00 } //01 00 
		$a_01_5 = {50 00 70 00 57 00 59 00 48 00 31 00 4b 00 57 00 5a 00 52 00 6c 00 32 00 68 00 31 00 30 00 33 00 } //01 00 
		$a_01_6 = {74 00 75 00 52 00 6d 00 68 00 47 00 47 00 30 00 69 00 32 00 46 00 63 00 72 00 41 00 65 00 34 00 74 00 56 00 65 00 6a 00 68 00 38 00 57 00 70 00 77 00 36 00 67 00 59 00 6f 00 31 00 31 00 30 00 } //01 00 
		$a_01_7 = {45 00 44 00 78 00 42 00 4e 00 35 00 4e 00 68 00 47 00 51 00 32 00 30 00 33 00 } //01 00 
		$a_01_8 = {41 00 46 00 70 00 44 00 6d 00 50 00 47 00 4d 00 63 00 4c 00 4f 00 53 00 4c 00 4c 00 58 00 61 00 55 00 41 00 59 00 5a 00 38 00 34 00 6c 00 42 00 66 00 33 00 45 00 33 00 34 00 } //01 00 
		$a_01_9 = {54 00 42 00 72 00 56 00 7a 00 4c 00 75 00 6e 00 4a 00 35 00 76 00 4c 00 44 00 74 00 32 00 33 00 34 00 } //00 00 
	condition:
		any of ($a_*)
 
}