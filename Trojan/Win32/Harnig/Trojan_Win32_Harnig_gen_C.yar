
rule Trojan_Win32_Harnig_gen_C{
	meta:
		description = "Trojan:Win32/Harnig.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 11 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 32 31 33 2e } //01 00  http://213.
		$a_00_1 = {2f 64 6c 61 64 76 } //01 00  /dladv
		$a_00_2 = {2f 64 6c 2f } //01 00  /dl/
		$a_00_3 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  \drivers\etc\hosts
		$a_00_4 = {26 63 6f 64 65 32 3d } //01 00  &code2=
		$a_00_5 = {2e 70 68 70 3f 63 6f 64 65 31 3d } //01 00  .php?code1=
		$a_01_6 = {64 6c 75 6e 69 71 } //01 00  dluniq
		$a_00_7 = {2e 74 78 74 00 5c } //01 00  琮瑸尀
		$a_00_8 = {74 6f 6f 6c 2e 65 78 65 } //01 00  tool.exe
		$a_00_9 = {74 6f 6f 6c 2e 74 78 74 } //01 00  tool.txt
		$a_00_10 = {74 69 62 73 2e 70 68 70 } //01 00  tibs.php
		$a_00_11 = {74 69 62 73 2e 65 78 65 } //01 00  tibs.exe
		$a_01_12 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //01 00  InternetGetConnectedState
		$a_00_13 = {52 65 67 69 73 74 65 72 53 65 72 76 69 63 65 50 72 6f 63 65 73 73 } //01 00  RegisterServiceProcess
		$a_00_14 = {4f 62 74 61 69 6e 55 73 65 72 41 67 65 6e 74 53 74 72 69 6e 67 } //01 00  ObtainUserAgentString
		$a_00_15 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e } //01 00  InternetOpen
		$a_01_16 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //00 00  GetSystemDirectoryA
	condition:
		any of ($a_*)
 
}