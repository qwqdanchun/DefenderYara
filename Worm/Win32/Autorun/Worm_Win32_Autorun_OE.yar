
rule Worm_Win32_Autorun_OE{
	meta:
		description = "Worm:Win32/Autorun.OE,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 43 00 6f 00 6e 00 66 00 69 00 67 00 5c 00 6e 00 76 00 73 00 63 00 76 00 33 00 32 00 2e 00 76 00 62 00 70 00 } //01 00  \Config\nvscv32.vbp
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 43 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  shell\open\Command=Config.exe
		$a_01_2 = {3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  :\autorun.inf
		$a_01_3 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 57 00 69 00 7a 00 61 00 72 00 64 00 5c 00 53 00 56 00 43 00 48 00 4f 00 53 00 54 00 2e 00 45 00 58 00 45 00 } //00 00  Program Files\Internet Explorer\Connection Wizard\SVCHOST.EXE
	condition:
		any of ($a_*)
 
}