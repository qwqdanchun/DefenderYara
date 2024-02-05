
rule PWS_BAT_Stimilina_B{
	meta:
		description = "PWS:BAT/Stimilina.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_80_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c } //Software\Microsoft\Windows\CurrentVersion\Run\  01 00 
		$a_02_1 = {73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 5f 00 90 02 06 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_2 = {73 63 72 65 65 6e 73 68 6f 74 5f 90 02 06 2e 65 78 65 90 00 } //01 00 
		$a_80_3 = {69 63 6f 6e 63 61 63 68 65 64 62 2e 65 78 65 } //iconcachedb.exe  01 00 
		$a_00_4 = {5c 00 4c 00 6f 00 63 00 61 00 6c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_5 = {2f 00 2f 00 70 00 69 00 63 00 2d 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 } //02 00 
		$a_02_6 = {2f 00 2f 00 73 00 65 00 6e 00 64 00 2d 00 69 00 6d 00 61 00 67 00 65 00 2e 00 75 00 73 00 2f 00 90 02 10 2e 00 70 00 68 00 70 00 3f 00 90 00 } //00 00 
		$a_00_7 = {78 30 01 } //00 05 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_Stimilina_B_2{
	meta:
		description = "PWS:BAT/Stimilina.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_80_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c } //Software\Microsoft\Windows\CurrentVersion\Run\  01 00 
		$a_02_1 = {73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 5f 00 90 02 06 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_2 = {73 63 72 65 65 6e 73 68 6f 74 5f 90 02 06 2e 65 78 65 90 00 } //01 00 
		$a_80_3 = {69 63 6f 6e 63 61 63 68 65 64 62 2e 65 78 65 } //iconcachedb.exe  02 00 
		$a_00_4 = {2f 00 2f 00 69 00 6d 00 61 00 67 00 65 00 34 00 79 00 6f 00 75 00 2e 00 75 00 73 00 2f 00 } //02 00 
		$a_02_5 = {2f 00 2f 00 69 00 6d 00 61 00 67 00 65 00 2d 00 70 00 6e 00 67 00 2e 00 75 00 73 00 2f 00 90 02 10 2e 00 70 00 68 00 70 00 90 00 } //04 00 
		$a_02_6 = {74 00 73 00 65 00 63 00 72 00 65 00 74 00 34 00 36 00 37 00 90 02 10 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 90 00 } //04 00 
		$a_02_7 = {74 73 65 63 72 65 74 34 36 37 90 02 10 40 67 6d 61 69 6c 2e 63 6f 6d 90 00 } //00 00 
		$a_00_8 = {5d 04 00 } //00 39 
	condition:
		any of ($a_*)
 
}