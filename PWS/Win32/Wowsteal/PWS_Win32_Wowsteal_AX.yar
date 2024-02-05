
rule PWS_Win32_Wowsteal_AX{
	meta:
		description = "PWS:Win32/Wowsteal.AX,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {bf 20 14 86 00 6a 09 57 c6 45 90 01 01 89 c6 45 90 01 01 48 c6 45 90 01 01 04 90 00 } //01 00 
		$a_01_1 = {b8 a7 d2 41 00 89 20 } //02 00 
		$a_01_2 = {2b f7 8d 04 1f 2b f3 83 c4 0c 83 ee 05 c6 00 e9 89 70 01 } //01 00 
		$a_00_3 = {00 77 6f 77 2e 65 78 65 00 } //01 00 
		$a_00_4 = {00 47 78 57 69 6e 64 6f 77 43 6c 61 73 73 44 33 64 00 } //01 00 
		$a_00_5 = {3a 36 35 31 35 31 2f 64 6a 62 7a 63 64 2f 69 2e 61 73 70 } //00 00 
	condition:
		any of ($a_*)
 
}