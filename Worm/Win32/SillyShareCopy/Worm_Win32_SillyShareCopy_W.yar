
rule Worm_Win32_SillyShareCopy_W{
	meta:
		description = "Worm:Win32/SillyShareCopy.W,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00  Scripting.FileSystemObject
		$a_01_1 = {5b 00 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 5d 00 } //01 00  [AUTORUN]
		$a_01_2 = {43 00 4f 00 44 00 45 00 42 00 41 00 53 00 45 00 3d 00 27 00 69 00 6e 00 64 00 65 00 78 00 2f 00 68 00 6f 00 6d 00 65 00 64 00 61 00 74 00 61 00 2e 00 45 00 58 00 45 00 } //01 00  CODEBASE='index/homedata.EXE
		$a_01_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_4 = {6b 00 69 00 6c 00 6c 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 00 00 } //01 00 
		$a_01_5 = {4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 4d 00 69 00 73 00 73 00 69 00 6f 00 6e 00 } //00 00  MonitorMission
	condition:
		any of ($a_*)
 
}