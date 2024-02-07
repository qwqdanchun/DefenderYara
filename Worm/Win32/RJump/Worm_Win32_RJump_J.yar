
rule Worm_Win32_RJump_J{
	meta:
		description = "Worm:Win32/RJump.J,SIGNATURE_TYPE_PEHSTR_EXT,6f 00 6e 00 0c 00 00 32 00 "
		
	strings :
		$a_02_0 = {12 34 56 78 02 00 00 00 00 00 00 00 90 01 02 00 00 90 05 10 06 61 2d 7a 30 2d 39 2e 65 78 65 00 90 00 } //0a 00 
		$a_01_1 = {77 69 6e 64 6f 77 73 5f 65 78 65 } //0a 00  windows_exe
		$a_01_2 = {50 59 54 48 4f 4e 53 43 52 49 50 54 } //0a 00  PYTHONSCRIPT
		$a_01_3 = {3c 70 79 74 68 6f 6e 64 6c 6c 3e } //0a 00  <pythondll>
		$a_01_4 = {3c 7a 6c 69 62 2e 70 79 64 3e } //0a 00  <zlib.pyd>
		$a_01_5 = {50 59 54 48 4f 4e 49 4e 53 50 45 43 54 } //05 00  PYTHONINSPECT
		$a_01_6 = {05 00 00 00 73 13 00 00 00 47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 73 0b 00 00 00 50 6f 73 74 4d 65 73 73 61 67 65 73 0a 00 00 00 4d 6f 76 65 46 69 6c 65 45 78 73 12 00 00 00 47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 73 0c 00 00 00 53 68 65 6c 6c 45 78 65 63 75 74 65 28 } //05 00 
		$a_01_7 = {75 72 6c 6f 70 65 6e 73 05 00 00 00 71 75 6f 74 65 28 } //05 00 
		$a_01_8 = {73 12 00 00 00 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 73 0e 00 00 00 4b 45 59 5f 41 4c 4c 5f 41 43 43 45 53 53 73 06 00 00 00 52 45 47 5f 53 5a } //01 00 
		$a_02_9 = {63 3a 5c 52 61 76 4d 6f 6e 90 02 02 2e 65 78 65 90 00 } //01 00 
		$a_00_10 = {63 3a 5c 41 64 6f 62 65 52 2e 65 78 65 } //01 00  c:\AdobeR.exe
		$a_00_11 = {63 3a 5c 62 69 74 74 6f 72 72 65 6e 74 2e 65 78 65 } //00 00  c:\bittorrent.exe
	condition:
		any of ($a_*)
 
}