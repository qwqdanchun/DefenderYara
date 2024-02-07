
rule Worm_Win32_Autorun_QA{
	meta:
		description = "Worm:Win32/Autorun.QA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [Autorun]
		$a_00_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 46 00 41 00 52 00 54 00 48 00 45 00 52 00 2e 00 65 00 78 00 65 00 } //01 00  shell\open\Command=FARTHER.exe
		$a_00_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 33 00 36 00 30 00 73 00 61 00 66 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill /f /im 360safe.exe
		$a_03_3 = {c7 45 fc 2f 00 00 00 66 83 7d dc 03 74 05 e9 90 01 02 00 00 c7 45 fc 32 00 00 00 8b 45 08 83 78 34 00 75 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}