
rule Worm_Win32_Autorun_OT{
	meta:
		description = "Worm:Win32/Autorun.OT,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 53 74 61 72 74 45 78 70 6c 6f 72 65 72 00 00 25 73 5c 62 6c 75 65 66 69 72 65 2e 65 78 65 00 65 78 70 6c 6f 72 65 72 20 25 73 } //01 00 
		$a_01_1 = {25 73 5c 73 76 63 68 6f 76 73 74 2e 45 58 45 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_01_2 = {73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d 22 73 76 63 68 6f 76 73 74 2e 45 58 45 22 } //01 00  shell\Auto\command="svchovst.EXE"
		$a_01_3 = {5b 41 55 54 4f 52 55 4e 5d } //01 00  [AUTORUN]
		$a_01_4 = {25 73 61 75 74 6f 72 75 6e 2e 69 6e 66 } //00 00  %sautorun.inf
	condition:
		any of ($a_*)
 
}