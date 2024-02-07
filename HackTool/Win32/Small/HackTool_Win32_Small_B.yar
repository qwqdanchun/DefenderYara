
rule HackTool_Win32_Small_B{
	meta:
		description = "HackTool:Win32/Small.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {7b 32 43 32 45 30 45 44 41 2d 38 41 43 45 2d 34 35 36 32 2d 39 44 45 43 2d 43 43 36 33 32 44 39 34 36 41 45 36 7d } //01 00  {2C2E0EDA-8ACE-4562-9DEC-CC632D946AE6}
		$a_00_1 = {7b 45 44 38 44 30 35 34 42 2d 39 30 42 38 2d 34 42 31 41 2d 42 34 45 37 2d 42 43 41 32 30 45 35 32 30 39 39 33 7d } //01 00  {ED8D054B-90B8-4B1A-B4E7-BCA20E520993}
		$a_01_2 = {84 b2 96 b1 b4 ba 1a 10 b6 9c 00 aa 00 34 1d 07 } //01 00 
		$a_00_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 31 35 38 31 36 36 2e 63 6f 6d 2f 53 68 6f 77 44 6a 2e 61 73 70 3f 69 64 3d } //01 00  http://www.158166.com/ShowDj.asp?id=
		$a_00_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  IsDebuggerPresent
	condition:
		any of ($a_*)
 
}