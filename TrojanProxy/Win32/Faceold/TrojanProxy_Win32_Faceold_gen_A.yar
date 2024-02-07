
rule TrojanProxy_Win32_Faceold_gen_A{
	meta:
		description = "TrojanProxy:Win32/Faceold.gen!A,SIGNATURE_TYPE_PEHSTR,09 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 74 49 73 54 68 65 45 6e 64 4f 66 54 68 65 57 6f 72 6c 64 41 6e 64 49 46 65 65 6c 46 69 6e 65 21 } //01 00  ItIsTheEndOfTheWorldAndIFeelFine!
		$a_01_1 = {53 50 48 57 5b 46 58 4c 64 56 73 6e } //01 00  SPHW[FXLdVsn
		$a_01_2 = {63 61 63 6c 73 20 22 25 73 22 20 2f 45 20 2f 43 20 2f 47 20 65 76 65 72 79 6f 6e 65 3a 66 } //01 00  cacls "%s" /E /C /G everyone:f
		$a_01_3 = {25 00 73 00 5c 00 73 00 79 00 73 00 69 00 6e 00 66 00 6f 00 33 00 32 00 2e 00 64 00 61 00 74 00 } //01 00  %s\sysinfo32.dat
		$a_01_4 = {5c 00 77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  \wininit32.exe
		$a_01_5 = {4e 74 43 6c 6f 73 65 53 74 61 74 75 73 } //01 00  NtCloseStatus
		$a_01_6 = {77 00 69 00 6e 00 73 00 74 00 61 00 30 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //01 00  winsta0\default
		$a_01_7 = {46 00 41 00 43 00 45 00 4f 00 4c 00 44 00 3a 00 5c 00 25 00 73 00 } //01 00  FACEOLD:\%s
		$a_01_8 = {47 00 75 00 65 00 35 00 35 00 7e 00 3f 00 } //01 00  Gue55~?
		$a_01_9 = {35 65 37 65 38 31 30 30 } //00 00  5e7e8100
	condition:
		any of ($a_*)
 
}