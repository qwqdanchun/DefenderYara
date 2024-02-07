
rule Spammer_Win32_Boblat_A{
	meta:
		description = "Spammer:Win32/Boblat.A,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {3d 0e 00 07 80 74 90 01 01 3d 08 00 0c 80 74 90 01 01 3b c7 75 90 01 01 33 c0 40 a3 90 00 } //05 00 
		$a_00_1 = {50 68 13 00 00 20 57 } //01 00 
		$a_00_2 = {0f b6 86 99 01 00 00 50 0f b6 86 98 01 00 00 50 0f b6 86 97 01 00 00 50 0f b6 86 96 01 00 00 50 0f b6 86 95 01 00 00 50 0f b6 86 94 01 00 00 50 } //01 00 
		$a_01_3 = {2d 2d 3d 5f 42 6c 61 74 42 6f 75 6e 64 61 72 79 2d } //01 00  --=_BlatBoundary-
		$a_01_4 = {68 74 74 70 3a 2f 2f 25 73 25 73 25 73 } //01 00  http://%s%s%s
		$a_01_5 = {2f 73 6d 74 70 2f 73 6d 74 70 2e 70 68 70 } //00 00  /smtp/smtp.php
		$a_00_6 = {5d 04 00 00 cc 12 03 80 5c 20 00 00 cd 12 03 } //80 00 
	condition:
		any of ($a_*)
 
}