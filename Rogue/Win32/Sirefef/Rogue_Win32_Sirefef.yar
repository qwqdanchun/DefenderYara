
rule Rogue_Win32_Sirefef{
	meta:
		description = "Rogue:Win32/Sirefef,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 74 00 53 00 63 00 61 00 6e 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 } //01 00  setScanFileName
		$a_01_1 = {73 00 65 00 74 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 4e 00 61 00 6d 00 65 00 } //01 00  setDetectedName
		$a_01_2 = {73 00 65 00 74 00 53 00 63 00 61 00 6e 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  setScanLocation
		$a_01_3 = {61 73 6b 3f 74 3d 25 75 26 75 3d 25 75 } //01 00  ask?t=%u&u=%u
		$a_01_4 = {6d 69 6e 69 49 45 2e 70 64 62 } //01 00  miniIE.pdb
		$a_01_5 = {61 76 5f 69 6e 73 74 61 6c 6c 2e 70 64 62 } //01 00  av_install.pdb
		$a_01_6 = {53 65 72 69 61 6c 5f 41 63 63 65 73 73 5f 4e 75 6d } //01 00  Serial_Access_Num
		$a_01_7 = {6c 00 73 00 61 00 73 00 72 00 76 00 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 68 00 74 00 6d 00 6c 00 } //02 00  lsasrv/uninstall.html
		$a_01_8 = {68 63 6e 63 74 33 c0 8b cb e8 90 01 04 6a 02 89 90 01 02 85 c0 58 75 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_Sirefef_2{
	meta:
		description = "Rogue:Win32/Sirefef,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 74 00 53 00 63 00 61 00 6e 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 } //01 00  setScanFileName
		$a_01_1 = {73 00 65 00 74 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 4e 00 61 00 6d 00 65 00 } //01 00  setDetectedName
		$a_01_2 = {73 00 65 00 74 00 53 00 63 00 61 00 6e 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  setScanLocation
		$a_01_3 = {61 73 6b 3f 74 3d 25 75 26 75 3d 25 75 } //01 00  ask?t=%u&u=%u
		$a_01_4 = {6d 69 6e 69 49 45 2e 70 64 62 } //01 00  miniIE.pdb
		$a_01_5 = {61 76 5f 69 6e 73 74 61 6c 6c 2e 70 64 62 } //01 00  av_install.pdb
		$a_01_6 = {53 65 72 69 61 6c 5f 41 63 63 65 73 73 5f 4e 75 6d } //01 00  Serial_Access_Num
		$a_01_7 = {6c 00 73 00 61 00 73 00 72 00 76 00 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 68 00 74 00 6d 00 6c 00 } //02 00  lsasrv/uninstall.html
		$a_01_8 = {68 63 6e 63 74 33 c0 8b cb e8 90 01 04 6a 02 89 90 01 02 85 c0 58 75 } //00 00 
	condition:
		any of ($a_*)
 
}