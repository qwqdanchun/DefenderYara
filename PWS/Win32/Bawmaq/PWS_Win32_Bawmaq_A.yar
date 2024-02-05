
rule PWS_Win32_Bawmaq_A{
	meta:
		description = "PWS:Win32/Bawmaq.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 69 70 6f 3d 00 } //01 00 
		$a_01_1 = {6e 6f 6d 65 70 63 3d 00 } //01 00 
		$a_01_2 = {69 6e 66 3d 00 } //01 00 
		$a_01_3 = {57 41 42 2d 5b 4d 61 71 75 69 6e 61 5d 2d 00 } //01 00 
		$a_01_4 = {53 4d 54 50 2d 5b 4d 61 71 75 69 6e 61 5d 2d } //01 00 
		$a_01_5 = {2e 65 78 65 20 2f 73 74 65 78 74 20 43 3a 5c 77 69 6e 68 65 6c 70 2e 74 78 74 22 } //00 00 
	condition:
		any of ($a_*)
 
}