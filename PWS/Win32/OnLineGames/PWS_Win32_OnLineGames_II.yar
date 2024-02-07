
rule PWS_Win32_OnLineGames_II{
	meta:
		description = "PWS:Win32/OnLineGames.II,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 59 44 4e 46 2e 54 65 6e 45 64 69 74 } //01 00  YYDNF.TenEdit
		$a_01_1 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 72 00 74 00 68 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  \System32\rthsvc.exe
		$a_01_2 = {5c 00 54 00 4d 00 50 00 30 00 39 00 44 00 42 00 30 00 39 00 45 00 2e 00 4a 00 50 00 47 00 } //01 00  \TMP09DB09E.JPG
		$a_01_3 = {64 00 6e 00 66 00 2e 00 61 00 73 00 70 00 00 00 16 00 00 00 6d 00 61 00 69 00 6c 00 2e 00 61 00 73 00 70 00 3f 00 64 00 3d 00 00 00 06 00 00 00 3c 00 23 00 3e } //00 00 
	condition:
		any of ($a_*)
 
}