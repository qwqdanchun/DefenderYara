
rule Worm_Win32_Autorun_DX{
	meta:
		description = "Worm:Win32/Autorun.DX,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //02 00  [autorun]
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 4f 00 70 00 65 00 6e 00 2e 00 65 00 78 00 65 00 } //02 00  shell\open\Command=Open.exe
		$a_01_2 = {47 00 72 00 69 00 73 00 6f 00 66 00 74 00 5c 00 41 00 76 00 67 00 20 00 66 00 72 00 65 00 65 00 5c 00 61 00 76 00 67 00 } //01 00  Grisoft\Avg free\avg
		$a_01_3 = {4e 00 6f 00 53 00 68 00 65 00 6c 00 6c 00 53 00 65 00 61 00 72 00 63 00 68 00 42 00 75 00 74 00 74 00 6f 00 6e 00 } //01 00  NoShellSearchButton
		$a_01_4 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //00 00  HideFileExt
	condition:
		any of ($a_*)
 
}