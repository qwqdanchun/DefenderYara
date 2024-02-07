
rule PWS_Win32_OnLineGames_CQI{
	meta:
		description = "PWS:Win32/OnLineGames.CQI,SIGNATURE_TYPE_PEHSTR,1d 00 1d 00 09 00 00 14 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //02 00  CreateToolhelp32Snapshot
		$a_01_1 = {48 4d 5f 54 43 4c 57 4f 57 } //02 00  HM_TCLWOW
		$a_01_2 = {48 4d 5f 4d 45 53 53 57 4f 57 } //02 00  HM_MESSWOW
		$a_01_3 = {00 4a 75 6d 70 4f 6e } //02 00 
		$a_01_4 = {00 4a 75 6d 70 4f 66 66 } //01 00  䨀浵佰晦
		$a_01_5 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00  Explorer.exe
		$a_01_6 = {61 73 76 7a 68 75 7a 68 75 33 32 2e 64 6c 6c } //01 00  asvzhuzhu32.dll
		$a_01_7 = {67 64 6d 73 69 33 32 2e 64 6c 6c } //01 00  gdmsi32.dll
		$a_01_8 = {46 54 43 43 6f 6d 70 72 65 73 73 2e 64 6c 6c } //00 00  FTCCompress.dll
	condition:
		any of ($a_*)
 
}