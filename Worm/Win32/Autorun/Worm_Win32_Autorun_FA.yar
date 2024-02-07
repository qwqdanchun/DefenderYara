
rule Worm_Win32_Autorun_FA{
	meta:
		description = "Worm:Win32/Autorun.FA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 00 69 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 00 00 00 00 0c 00 00 00 3a 00 72 00 65 00 64 00 65 00 6c 00 00 00 00 00 04 00 00 00 01 00 88 00 08 00 00 00 64 00 65 00 6c 00 20 00 00 00 00 00 08 00 00 00 2e 00 65 00 78 00 65 00 00 00 00 00 04 00 00 00 01 00 8c 00 12 00 00 00 69 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 20 00 00 00 16 00 00 00 20 00 67 00 6f 00 74 00 6f 00 20 00 72 00 65 00 64 00 65 00 6c 00 00 00 0c 00 00 00 } //01 00 
		$a_02_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 46 00 6f 00 6e 00 74 00 73 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_00_2 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_3 = {72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 } //00 00  regwrite
	condition:
		any of ($a_*)
 
}