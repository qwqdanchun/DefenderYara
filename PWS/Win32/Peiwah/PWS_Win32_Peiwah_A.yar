
rule PWS_Win32_Peiwah_A{
	meta:
		description = "PWS:Win32/Peiwah.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 53 2d 57 61 72 65 20 49 45 20 50 53 } //01 00  PS-Ware IE PS
		$a_01_1 = {53 65 6e 64 20 55 73 65 72 20 6e 61 6d 65 20 26 26 20 74 79 70 65 } //01 00  Send User name && type
		$a_01_2 = {44 69 73 61 62 6c 65 20 52 65 67 45 64 69 74 } //01 00  Disable RegEdit
		$a_01_3 = {44 69 73 61 62 6c 65 20 54 61 73 6b 20 4d 61 6e 61 67 65 72 } //01 00  Disable Task Manager
		$a_01_4 = {44 69 73 61 62 6c 65 20 4d 53 2d 43 6f 6e 66 69 67 } //01 00  Disable MS-Config
		$a_01_5 = {53 65 6e 64 20 59 21 6d 73 67 72 20 50 61 73 73 77 6f 72 64 } //01 00  Send Y!msgr Password
		$a_01_6 = {26 44 65 63 6f 64 65 72 } //01 00  &Decoder
		$a_01_7 = {53 65 72 76 65 72 20 6e 61 6d 65 } //01 00  Server name
		$a_01_8 = {73 70 6f 6f 6c 73 76 2e 65 78 65 } //01 00  spoolsv.exe
		$a_01_9 = {79 70 61 67 65 72 2e 65 78 65 } //01 00  ypager.exe
		$a_01_10 = {53 6f 6e 67 31 2e 6d 70 33 2e 65 78 65 21 } //01 00  Song1.mp3.exe!
		$a_01_11 = {46 61 6b 65 20 6d 65 73 73 61 67 65 } //01 00  Fake message
		$a_01_12 = {45 78 63 6c 61 6d 61 74 69 6f 6e 21 } //00 00  Exclamation!
	condition:
		any of ($a_*)
 
}