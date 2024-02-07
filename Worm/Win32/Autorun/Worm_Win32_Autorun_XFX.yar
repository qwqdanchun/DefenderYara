
rule Worm_Win32_Autorun_XFX{
	meta:
		description = "Worm:Win32/Autorun.XFX,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {40 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 61 00 73 00 5c 00 68 00 61 00 63 00 6b 00 5c 00 65 00 78 00 65 00 20 00 70 00 72 00 6f 00 6a 00 5c 00 73 00 65 00 6d 00 5c 00 50 00 52 00 4f 00 4a 00 45 00 43 00 54 00 31 00 2e 00 56 00 42 00 50 00 } //01 00  @*\AC:\as\hack\exe proj\sem\PROJECT1.VBP
		$a_00_1 = {72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  regedit.exe
		$a_01_2 = {43 3a 5c 63 6f 6d 61 6e 64 2e 65 78 65 20 22 25 31 22 20 25 2a } //01 00  C:\comand.exe "%1" %*
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 56 42 20 61 6e 64 20 56 42 41 20 50 72 6f 67 72 61 6d 20 53 65 74 74 69 6e 67 73 5c 4c 6e 41 5c 72 75 6e } //01 00  Software\VB and VBA Program Settings\LnA\run
		$a_00_4 = {6e 00 65 00 76 00 65 00 72 00 73 00 68 00 6f 00 77 00 65 00 78 00 74 00 } //01 00  nevershowext
		$a_00_5 = {64 00 61 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  dats.exe
	condition:
		any of ($a_*)
 
}