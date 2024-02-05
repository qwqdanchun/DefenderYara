
rule Trojan_BAT_FormBook_BG_MTB{
	meta:
		description = "Trojan:BAT/FormBook.BG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 70 00 65 00 6e 00 76 00 70 00 6e 00 31 00 5c 00 6f 00 70 00 65 00 6e 00 76 00 70 00 6e 00 31 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {68 50 66 64 73 66 68 64 73 64 72 6f 64 73 63 65 73 73 } //01 00 
		$a_01_2 = {6c 70 42 61 73 66 73 64 73 64 66 65 64 64 66 68 73 41 64 64 72 65 73 73 } //01 00 
		$a_01_3 = {66 00 51 00 55 00 48 00 62 00 58 00 44 00 61 00 6a 00 63 00 62 00 75 00 57 00 6b 00 42 00 72 00 4e 00 67 00 45 00 33 00 6f 00 6d 00 74 00 7a 00 4c 00 67 00 67 00 72 00 4a 00 4a 00 67 00 39 00 51 00 44 00 42 00 52 00 53 00 32 00 58 00 31 00 34 00 55 00 4d 00 50 00 30 00 62 00 49 00 } //01 00 
		$a_01_4 = {43 00 3a 00 5c 00 54 00 65 00 66 00 73 00 64 00 64 00 64 00 64 00 64 00 6d 00 70 00 } //01 00 
		$a_01_5 = {43 00 3a 00 5c 00 4e 00 65 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 77 00 54 00 65 00 6d 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}