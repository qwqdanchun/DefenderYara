
rule Trojan_Win32_Sefnit_gen_B{
	meta:
		description = "Trojan:Win32/Sefnit.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0b 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 6f 75 74 70 75 74 5c 4d 69 6e 53 69 7a 65 52 65 6c 5c 75 70 64 61 74 65 72 2e 70 64 62 00 } //01 00 
		$a_81_1 = {2e 63 6f 6d 2f 75 70 64 61 74 65 2e 70 68 70 00 } //01 00 
		$a_01_2 = {43 00 25 00 73 00 2f 00 25 00 64 00 2d 00 25 00 64 00 2d 00 25 00 64 00 5f 00 47 00 54 00 43 00 5f 00 54 00 4d 00 50 00 5f 00 00 00 } //01 00 
		$a_01_3 = {75 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_4 = {75 00 70 00 64 00 72 00 65 00 6d 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_5 = {69 00 70 00 66 00 69 00 6c 00 74 00 65 00 72 00 5f 00 73 00 74 00 61 00 74 00 69 00 63 00 2e 00 64 00 61 00 74 00 00 00 } //01 00 
		$a_01_6 = {41 00 77 00 72 00 6d 00 5f 00 6d 00 75 00 74 00 65 00 78 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}