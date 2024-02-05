
rule PWS_Win32_Ldpinch_BK{
	meta:
		description = "PWS:Win32/Ldpinch.BK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {75 bb 33 f6 56 68 80 00 00 00 6a 02 56 56 68 00 00 00 40 57 c7 80 90 01 04 2e 6e 6c 73 90 00 } //01 00 
		$a_01_1 = {05 20 07 00 00 50 6a 00 ff 75 08 } //01 00 
		$a_01_2 = {2a 2a 52 65 74 43 6f 64 65 3a 20 00 } //01 00 
		$a_01_3 = {68 74 74 70 73 65 6e 64 2e 64 6c 6c 00 49 45 43 6c 65 61 6e 55 70 00 49 45 49 6e 69 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}