
rule Trojan_Win32_Emotet_CD{
	meta:
		description = "Trojan:Win32/Emotet.CD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 6a 68 5a 57 4e 5f 63 33 34 65 } //01 00  NjhZWN_c34e
		$a_01_1 = {65 00 3c 00 23 00 40 00 4d 00 3d 00 59 00 45 00 65 00 63 00 64 00 } //01 00  e<#@M=YEecd
		$a_01_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 56 00 62 00 6f 00 78 00 20 00 54 00 72 00 69 00 61 00 6c 00 20 00 43 00 6c 00 69 00 65 00 6e 00 74 00 20 00 44 00 4c 00 4c } //01 00 
		$a_01_3 = {69 46 6e 4b 32 2e 70 64 62 } //00 00  iFnK2.pdb
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_CD_2{
	meta:
		description = "Trojan:Win32/Emotet.CD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 7a 6a 64 45 47 79 35 57 4a 68 4f 75 75 4d 59 77 72 69 54 33 5f 70 36 41 74 2b 2e 70 64 62 } //01 00  CzjdEGy5WJhOuuMYwriT3_p6At+.pdb
		$a_01_1 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 73 00 61 00 6e 00 6e 00 65 00 2e 00 65 00 78 00 65 } //01 00 
		$a_01_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 4c 00 65 00 67 } //00 00 
	condition:
		any of ($a_*)
 
}