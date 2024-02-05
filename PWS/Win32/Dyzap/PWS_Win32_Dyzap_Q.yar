
rule PWS_Win32_Dyzap_Q{
	meta:
		description = "PWS:Win32/Dyzap.Q,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {64 a1 30 00 00 00 85 db 89 44 24 90 01 01 58 8b 44 24 90 01 01 83 78 64 02 0f 82 90 00 } //03 00 
		$a_03_1 = {51 eb 17 eb 15 47 65 74 53 79 73 74 65 6d 50 6f 77 65 72 53 74 61 74 75 73 00 68 90 01 02 40 00 8f 45 fc 8b 45 fc 8b e5 5d c3 90 00 } //03 00 
		$a_03_2 = {69 72 74 75 61 6c 41 6c 6c 6f 63 00 90 09 02 00 00 90 04 01 06 41 2d 55 57 2d 5a 90 00 } //01 00 
		$a_01_3 = {00 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7a 00 78 00 35 00 66 00 77 00 74 00 77 00 34 00 65 00 70 00 00 00 } //01 00 
		$a_01_4 = {00 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 70 00 65 00 6e 00 33 00 6a 00 33 00 38 00 33 00 32 00 68 00 00 00 } //01 00 
		$a_01_5 = {00 47 6c 6f 62 61 6c 5c 70 65 6e 33 36 33 38 33 32 68 00 } //00 00 
		$a_00_6 = {80 10 00 00 d4 cd } //cb 17 
	condition:
		any of ($a_*)
 
}