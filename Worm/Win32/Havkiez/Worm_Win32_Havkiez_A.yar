
rule Worm_Win32_Havkiez_A{
	meta:
		description = "Worm:Win32/Havkiez.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 70 00 65 00 6e 00 20 00 3d 00 20 00 4e 00 65 00 77 00 20 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  open = New Document.exe
		$a_01_1 = {63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 2e 00 63 00 6f 00 6d 00 } //01 00  config_.com
		$a_01_2 = {53 00 79 00 73 00 5f 00 2e 00 63 00 6f 00 6d 00 } //01 00  Sys_.com
		$a_01_3 = {73 00 74 00 61 00 72 00 74 00 75 00 70 00 66 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //01 00  startupfolder.com
		$a_01_4 = {6d 00 73 00 63 00 61 00 6c 00 63 00 2e 00 65 00 78 00 65 00 } //00 00  mscalc.exe
	condition:
		any of ($a_*)
 
}