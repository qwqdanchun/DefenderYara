
rule BrowserModifier_Win32_Fotomoto_B{
	meta:
		description = "BrowserModifier:Win32/Fotomoto.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 73 00 6d 00 62 00 2f 00 66 00 69 00 78 00 65 00 64 00 5f 00 70 00 6f 00 70 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_1 = {2f 00 73 00 6d 00 62 00 2f 00 72 00 65 00 6c 00 61 00 74 00 65 00 64 00 67 00 65 00 74 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_2 = {23 00 73 00 68 00 6f 00 77 00 5f 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //01 00 
		$a_01_3 = {23 00 72 00 65 00 6c 00 61 00 74 00 65 00 64 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 } //01 00 
		$a_01_4 = {23 00 70 00 75 00 73 00 68 00 6c 00 69 00 73 00 74 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 } //01 00 
		$a_01_5 = {23 00 75 00 70 00 64 00 61 00 74 00 65 00 5f 00 6e 00 6f 00 74 00 69 00 66 00 79 00 } //01 00 
		$a_01_6 = {23 00 66 00 69 00 78 00 65 00 64 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}