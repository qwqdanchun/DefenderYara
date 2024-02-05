
rule PWS_Win32_OnLineGames_CPJ{
	meta:
		description = "PWS:Win32/OnLineGames.CPJ,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //0a 00 
		$a_01_1 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //0a 00 
		$a_01_2 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //0a 00 
		$a_00_3 = {00 73 74 72 72 63 68 72 } //01 00 
		$a_00_4 = {00 47 61 6d 65 2e 65 78 65 } //01 00 
		$a_00_5 = {3f 61 3d 25 73 26 73 3d 25 73 26 75 3d 25 73 26 70 3d 25 73 26 70 69 6e 3d 25 73 26 72 3d 25 73 26 6c 3d 25 73 26 6d 3d 25 73 } //01 00 
		$a_00_6 = {54 69 61 6e 4c 6f 6e 67 42 61 42 75 } //01 00 
		$a_00_7 = {00 48 4f 4f 4b 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_OnLineGames_CPJ_2{
	meta:
		description = "PWS:Win32/OnLineGames.CPJ,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 74 72 72 63 68 72 } //0a 00 
		$a_01_1 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00 
		$a_01_2 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //0a 00 
		$a_01_3 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //05 00 
		$a_02_4 = {52 61 76 4d c7 45 90 01 01 6f 6e 2e 65 c7 45 90 01 01 78 65 00 00 90 00 } //03 00 
		$a_02_5 = {67 61 6d 65 90 01 01 c7 45 90 01 01 63 6c 69 65 ff 75 90 01 01 c7 45 90 01 01 6e 74 2e 65 c7 45 90 01 01 78 65 00 00 90 00 } //03 00 
		$a_02_6 = {63 61 62 61 90 01 01 c7 45 90 01 01 6c 6d 61 69 ff 75 90 01 01 c7 45 90 01 01 6e 2e 65 78 c7 45 90 01 01 65 00 00 00 90 00 } //03 00 
		$a_02_7 = {41 75 74 6f 90 01 01 c7 45 90 01 01 4c 6f 67 69 c7 45 90 01 01 6e 2e 64 61 c7 45 90 01 01 74 00 00 00 c7 45 90 01 01 72 62 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}