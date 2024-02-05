
rule Trojan_Win32_FormBook_BR_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 4a 00 48 00 49 00 62 00 45 00 68 00 63 00 39 00 43 00 59 00 42 00 50 00 63 00 45 00 78 00 6f 00 43 00 63 00 44 00 30 00 69 00 59 00 64 00 4e 00 7a 00 73 00 38 00 67 00 4d 00 65 00 56 00 51 00 73 00 62 00 65 00 47 00 57 00 59 00 31 00 30 00 33 00 } //01 00 
		$a_01_1 = {46 00 76 00 4f 00 37 00 75 00 45 00 50 00 32 00 35 00 33 00 62 00 73 00 44 00 6c 00 53 00 57 00 48 00 4e 00 53 00 38 00 49 00 61 00 47 00 61 00 41 00 51 00 30 00 6f 00 41 00 35 00 52 00 6b 00 74 00 44 00 32 00 31 00 36 00 } //01 00 
		$a_01_2 = {45 00 6a 00 41 00 4a 00 70 00 63 00 4e 00 4a 00 42 00 65 00 33 00 33 00 47 00 39 00 33 00 34 00 4d 00 44 00 75 00 6c 00 79 00 4c 00 59 00 77 00 6e 00 77 00 6f 00 79 00 46 00 43 00 6c 00 61 00 43 00 44 00 59 00 78 00 30 00 38 00 35 00 } //01 00 
		$a_01_3 = {4a 00 6f 00 35 00 58 00 41 00 75 00 37 00 36 00 46 00 55 00 35 00 4e 00 63 00 52 00 57 00 70 00 30 00 41 00 71 00 34 00 56 00 75 00 32 00 31 00 33 00 30 00 } //01 00 
		$a_01_4 = {57 00 61 00 77 00 4b 00 55 00 4f 00 36 00 31 00 30 00 32 00 } //01 00 
		$a_01_5 = {54 00 41 00 50 00 7a 00 45 00 73 00 32 00 4f 00 7a 00 5a 00 51 00 70 00 59 00 76 00 6d 00 54 00 4d 00 79 00 31 00 37 00 39 00 } //01 00 
		$a_01_6 = {72 00 32 00 48 00 33 00 58 00 77 00 71 00 44 00 38 00 6e 00 55 00 63 00 7a 00 53 00 63 00 34 00 35 00 } //01 00 
		$a_00_7 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}