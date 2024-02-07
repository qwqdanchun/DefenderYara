
rule Worm_Win32_Autorun_DV{
	meta:
		description = "Worm:Win32/Autorun.DV,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 62 00 57 00 7a 00 64 00 6d 00 6e 00 67 00 6d 00 74 00 } //01 00  PbWzdmngmt
		$a_01_1 = {4d 00 6f 00 75 00 72 00 6e 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 6f 00 72 00 31 00 60 00 31 00 2e 00 65 00 78 00 65 00 } //01 00  Mourn_Operator1`1.exe
		$a_01_2 = {73 00 68 00 69 00 6d 00 67 00 76 00 77 00 2e 00 64 00 6c 00 6c 00 } //01 00  shimgvw.dll
		$a_01_3 = {6a 00 70 00 65 00 67 00 } //01 00  jpeg
		$a_01_4 = {5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //01 00  \shell\open\command
		$a_01_5 = {41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 2e 00 49 00 4e 00 46 00 } //00 00  AUTORUN.INF
	condition:
		any of ($a_*)
 
}