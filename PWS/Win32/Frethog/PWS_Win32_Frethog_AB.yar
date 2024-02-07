
rule PWS_Win32_Frethog_AB{
	meta:
		description = "PWS:Win32/Frethog.AB,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //0a 00  CreateToolhelp32Snapshot
		$a_00_1 = {30 38 45 39 30 39 41 34 2d 34 38 44 44 2d 38 42 43 43 2d 42 32 33 36 2d 39 30 41 36 30 34 42 39 33 45 36 38 } //0a 00  08E909A4-48DD-8BCC-B236-90A604B93E68
		$a_00_2 = {52 61 76 4d 6f 6e 2e 65 78 65 } //0a 00  RavMon.exe
		$a_00_3 = {41 56 50 2e 41 6c 65 72 74 44 69 61 6c 6f 67 } //0a 00  AVP.AlertDialog
		$a_00_4 = {23 33 32 37 37 30 } //01 00  #32770
		$a_00_5 = {46 6f 72 74 68 67 6f 65 72 } //01 00  Forthgoer
		$a_00_6 = {74 6c 64 6f 6f 72 25 64 2e 64 6c 6c } //01 00  tldoor%d.dll
		$a_00_7 = {46 69 6c 4d 73 67 2e 65 78 65 } //01 00  FilMsg.exe
		$a_00_8 = {54 77 69 73 74 65 72 2e 65 78 65 } //00 00  Twister.exe
	condition:
		any of ($a_*)
 
}