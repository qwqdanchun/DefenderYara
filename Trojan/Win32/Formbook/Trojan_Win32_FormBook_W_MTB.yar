
rule Trojan_Win32_FormBook_W_MTB{
	meta:
		description = "Trojan:Win32/FormBook.W!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 62 00 6d 00 35 00 4b 00 63 00 4b 00 4c 00 71 00 69 00 69 00 54 00 32 00 4e 00 33 00 36 00 63 00 61 00 47 00 65 00 30 00 6f 00 69 00 4d 00 76 00 44 00 75 00 48 00 72 00 34 00 4c 00 6f 00 35 00 37 00 59 00 32 00 7a 00 49 00 67 00 31 00 34 00 37 00 } //01 00 
		$a_01_1 = {43 00 62 00 63 00 45 00 4b 00 6d 00 67 00 31 00 65 00 6c 00 69 00 66 00 52 00 4e 00 36 00 75 00 71 00 70 00 76 00 31 00 33 00 } //01 00 
		$a_01_2 = {57 00 44 00 44 00 42 00 68 00 62 00 45 00 54 00 41 00 57 00 41 00 4c 00 68 00 67 00 47 00 73 00 6f 00 41 00 5a 00 31 00 43 00 6e 00 6c 00 51 00 41 00 6e 00 58 00 78 00 6b 00 5a 00 51 00 56 00 36 00 31 00 56 00 75 00 6e 00 32 00 30 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}