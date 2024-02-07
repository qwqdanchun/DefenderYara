
rule Trojan_Win32_Hexzone_A_dll{
	meta:
		description = "Trojan:Win32/Hexzone.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {49 4a 65 74 56 69 64 65 6f 50 6c 75 67 69 6e } //0a 00  IJetVideoPlugin
		$a_02_1 = {64 65 6c 20 25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 90 01 03 6c 69 62 2e 64 6c 6c 90 00 } //0a 00 
		$a_02_2 = {69 66 20 65 78 69 73 74 20 25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 90 01 03 6c 69 62 2e 64 6c 6c 67 6f 74 6f 20 3a 6c 6f 6f 70 90 00 } //05 00 
		$a_00_3 = {64 65 6c 20 64 65 6c 65 74 65 5f 73 68 2e 62 61 74 } //01 00  del delete_sh.bat
		$a_00_4 = {42 00 30 00 45 00 44 00 34 00 37 00 32 00 36 00 2d 00 35 00 42 00 43 00 38 00 2d 00 34 00 45 00 32 00 32 00 2d 00 41 00 37 00 41 00 38 00 2d 00 33 00 30 00 37 00 34 00 41 00 37 00 33 00 43 00 45 00 36 00 34 00 45 00 } //01 00  B0ED4726-5BC8-4E22-A7A8-3074A73CE64E
		$a_00_5 = {31 00 34 00 30 00 38 00 45 00 32 00 30 00 38 00 2d 00 32 00 41 00 43 00 31 00 2d 00 34 00 32 00 44 00 33 00 2d 00 39 00 46 00 31 00 30 00 2d 00 37 00 38 00 41 00 35 00 42 00 33 00 36 00 45 00 30 00 35 00 41 00 43 00 } //00 00  1408E208-2AC1-42D3-9F10-78A5B36E05AC
	condition:
		any of ($a_*)
 
}