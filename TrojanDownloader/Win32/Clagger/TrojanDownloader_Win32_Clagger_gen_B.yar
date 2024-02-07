
rule TrojanDownloader_Win32_Clagger_gen_B{
	meta:
		description = "TrojanDownloader:Win32/Clagger.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0e 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4c 73 61 } //01 00  ControlSet\Control\Lsa
		$a_00_1 = {2e 70 68 70 3f 6e 65 77 3d 31 } //01 00  .php?new=1
		$a_00_2 = {41 63 72 6f 62 61 74 20 52 65 61 64 65 72 20 45 52 52 4f 52 20 } //01 00  Acrobat Reader ERROR 
		$a_00_3 = {57 69 6e 55 70 64 61 74 65 00 } //01 00  楗啮摰瑡e
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4f 44 42 43 5c } //01 00  Software\ODBC\
		$a_00_5 = {64 77 6c 63 6f 75 6e 74 65 72 } //01 00  dwlcounter
		$a_00_6 = {25 73 3b 25 64 3b 25 73 76 } //01 00  %s;%d;%sv
		$a_00_7 = {25 73 20 22 25 73 22 } //02 00  %s "%s"
		$a_00_8 = {4c 61 73 74 55 70 64 61 74 65 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 } //02 00 
		$a_00_9 = {ff 45 fc 88 0c 02 40 8a 08 80 f9 2e 75 f2 } //04 00 
		$a_02_10 = {74 12 56 0f b6 f3 90 02 04 33 c6 41 8a 1c 11 84 db 75 f0 5e 90 00 } //03 00 
		$a_00_11 = {ff 45 f4 8b 45 f4 8b 4d 08 c1 e0 02 } //03 00 
		$a_00_12 = {8b 70 78 03 f7 89 45 e4 8b 46 20 } //01 00 
		$a_00_13 = {50 6a 01 68 00 00 10 00 ff 15 } //02 00 
		$a_00_14 = {48 89 45 d8 50 8b 45 f4 e8 } //00 00 
	condition:
		any of ($a_*)
 
}