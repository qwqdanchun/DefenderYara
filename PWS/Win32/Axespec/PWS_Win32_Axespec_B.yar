
rule PWS_Win32_Axespec_B{
	meta:
		description = "PWS:Win32/Axespec.B,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {30 10 46 38 9e 90 01 04 0f 44 f3 38 18 74 03 40 eb e7 83 c1 04 83 f9 90 01 01 72 d9 55 57 33 ed 90 00 } //0a 00 
		$a_00_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 75 00 73 00 69 00 63 00 65 00 6e 00 67 00 2e 00 72 00 75 00 2f 00 6d 00 75 00 73 00 69 00 63 00 2f 00 66 00 6f 00 72 00 75 00 6d 00 2f 00 69 00 6e 00 64 00 65 00 78 00 31 00 2e 00 70 00 68 00 70 00 } //01 00  http://musiceng.ru/music/forum/index1.php
		$a_00_2 = {57 00 49 00 4e 00 4e 00 54 00 5f 00 37 00 34 00 36 00 37 00 42 00 32 00 39 00 33 00 44 00 45 00 39 00 44 00 } //00 00  WINNT_7467B293DE9D
	condition:
		any of ($a_*)
 
}