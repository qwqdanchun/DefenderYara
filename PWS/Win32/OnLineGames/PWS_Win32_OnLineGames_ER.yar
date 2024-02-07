
rule PWS_Win32_OnLineGames_ER{
	meta:
		description = "PWS:Win32/OnLineGames.ER,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 29 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6f 65 31 32 32 33 33 74 49 6e 70 75 74 53 74 61 74 65 } //0a 00  oe12233tInputState
		$a_01_1 = {6f 65 31 32 32 33 33 74 4d 65 73 73 61 67 65 41 } //0a 00  oe12233tMessageA
		$a_01_2 = {6f 65 31 32 32 33 33 73 74 54 68 72 65 61 64 4d 65 73 73 61 67 65 41 } //0a 00  oe12233stThreadMessageA
		$a_01_3 = {00 72 65 6c 64 65 6c 00 } //01 00  爀汥敤l
		$a_01_4 = {8b f0 f7 d6 d1 e8 83 e6 01 40 } //01 00 
		$a_01_5 = {2e 72 61 77 64 61 74 00 } //00 00  爮睡慤t
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_OnLineGames_ER_2{
	meta:
		description = "PWS:Win32/OnLineGames.ER,SIGNATURE_TYPE_PEHSTR_EXT,70 00 6f 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 72 61 77 64 61 74 } //0a 00  .rawdat
		$a_01_1 = {6f 65 31 32 32 33 33 74 49 6e 70 75 74 53 74 61 74 65 } //0a 00  oe12233tInputState
		$a_01_2 = {6f 65 31 32 32 33 33 74 4d 65 73 73 61 67 65 41 } //0a 00  oe12233tMessageA
		$a_01_3 = {6f 65 31 32 32 33 33 73 74 54 68 72 65 61 64 4d 65 73 73 61 67 65 41 } //0a 00  oe12233stThreadMessageA
		$a_01_4 = {5c 73 79 73 74 65 6d 33 32 5c 61 64 76 61 70 69 33 32 2e 64 6c 6c } //0a 00  \system32\advapi32.dll
		$a_01_5 = {72 65 6c 64 65 6c } //0a 00  reldel
		$a_01_6 = {78 70 69 61 39 63 78 33 31 63 76 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //0a 00  xpia9cx31cvtSystemDirectoryA
		$a_01_7 = {78 70 69 61 39 63 78 33 31 63 76 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 41 } //0a 00  xpia9cx31cvtTempFileNameA
		$a_01_8 = {78 70 69 61 39 63 78 33 31 63 76 74 54 65 6d 70 50 61 74 68 41 } //0a 00  xpia9cx31cvtTempPathA
		$a_01_9 = {78 70 69 61 39 63 78 33 31 63 76 74 54 69 63 6b 43 6f 75 6e 74 } //0a 00  xpia9cx31cvtTickCount
		$a_01_10 = {78 70 69 61 39 63 78 33 31 63 76 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //0a 00  xpia9cx31cvtWindowsDirectoryA
		$a_01_11 = {78 70 69 61 39 63 78 33 31 63 76 76 65 46 69 6c 65 45 78 41 } //01 00  xpia9cx31cvveFileExA
		$a_03_12 = {8b 00 03 c1 50 e8 90 01 04 90 02 02 85 c0 90 02 02 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}