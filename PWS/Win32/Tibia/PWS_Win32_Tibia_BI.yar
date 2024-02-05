
rule PWS_Win32_Tibia_BI{
	meta:
		description = "PWS:Win32/Tibia.BI,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 05 00 "
		
	strings :
		$a_03_0 = {ff 0f 1f 00 e8 90 09 04 00 50 6a 00 68 90 00 } //02 00 
		$a_01_1 = {54 00 69 00 62 00 69 00 61 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //01 00 
		$a_01_2 = {2e 00 70 00 68 00 70 00 3f 00 69 00 6e 00 3d 00 } //01 00 
		$a_02_3 = {55 00 73 00 65 00 72 00 73 00 5c 00 90 02 10 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 90 00 } //01 00 
		$a_02_4 = {47 00 65 00 74 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 49 00 6e 00 66 00 6f 00 90 02 10 4b 00 45 00 52 00 4e 00 45 00 4c 00 33 00 32 00 2e 00 44 00 4c 00 4c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}