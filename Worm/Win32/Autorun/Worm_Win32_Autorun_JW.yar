
rule Worm_Win32_Autorun_JW{
	meta:
		description = "Worm:Win32/Autorun.JW,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 44 00 65 00 62 00 75 00 67 00 50 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 } //01 00  SeDebugPrivilege
		$a_01_1 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 37 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  *\AC:\Project7\Project1.vbp
		$a_01_2 = {47 65 74 44 72 69 76 65 54 79 70 65 41 } //01 00  GetDriveTypeA
		$a_01_3 = {53 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 41 } //01 00  SetCurrentDirectoryA
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_5 = {52 74 6c 53 65 74 50 72 6f 63 65 73 73 49 73 43 72 69 74 69 63 61 6c } //01 00  RtlSetProcessIsCritical
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //01 00  InternetOpenA
		$a_01_7 = {36 00 39 00 42 00 31 00 36 00 43 00 46 00 33 00 35 00 36 00 46 00 46 00 37 00 35 00 46 00 30 00 36 00 31 00 31 00 46 00 35 00 46 00 39 00 32 00 44 00 34 00 41 00 38 00 } //01 00  69B16CF356FF75F0611F5F92D4A8
		$a_01_8 = {77 00 48 00 32 00 32 00 76 00 6f 00 75 00 31 00 30 00 44 00 72 00 30 00 49 00 33 00 } //00 00  wH22vou10Dr0I3
	condition:
		any of ($a_*)
 
}