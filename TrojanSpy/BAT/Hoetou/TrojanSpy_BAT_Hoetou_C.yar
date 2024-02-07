
rule TrojanSpy_BAT_Hoetou_C{
	meta:
		description = "TrojanSpy:BAT/Hoetou.C,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 79 74 65 73 63 6f 75 74 53 63 72 65 65 6e 43 61 70 74 75 72 69 6e 67 4c 69 62 } //01 00  BytescoutScreenCapturingLib
		$a_01_1 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //01 00  {11111-22222-50001-00000}
		$a_01_2 = {48 00 6f 00 73 00 74 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 66 00 6f 00 72 00 20 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 } //01 00  Host process for windows services
		$a_01_3 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  svchost.exe
		$a_01_4 = {36 00 2e 00 33 00 2e 00 39 00 32 00 30 00 31 00 2e 00 31 00 36 00 34 00 32 00 31 00 } //01 00  6.3.9201.16421
		$a_01_5 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 46 00 6f 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 42 00 61 00 73 00 69 00 63 00 } //01 00  Microsoft Fonction Basic
		$a_01_6 = {50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 33 00 38 00 2e 00 38 00 2e 00 65 00 78 00 65 00 } //01 00  Project38.8.exe
		$a_01_7 = {73 00 42 00 75 00 69 00 6c 00 64 00 31 00 2e 00 65 00 78 00 65 00 } //00 00  sBuild1.exe
	condition:
		any of ($a_*)
 
}