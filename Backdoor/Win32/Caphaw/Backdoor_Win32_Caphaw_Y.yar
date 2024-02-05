
rule Backdoor_Win32_Caphaw_Y{
	meta:
		description = "Backdoor:Win32/Caphaw.Y,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 04 00 00 32 00 "
		
	strings :
		$a_03_0 = {89 04 24 89 44 24 0c 8b 44 24 0c ba 90 01 04 3b c2 89 0d 90 01 04 73 60 56 90 13 69 c9 90 01 04 81 c1 90 01 04 8b c1 c1 e8 10 25 ff 7f 00 00 89 44 24 08 89 0d 90 01 04 db 44 24 08 d9 fa d9 5c 24 08 d9 44 24 08 db 1d 90 00 } //32 00 
		$a_03_1 = {89 44 24 08 89 44 24 04 8b 44 24 04 83 c4 04 3d 90 01 04 73 2c e8 90 01 02 00 00 89 44 24 08 db 44 24 08 d9 fa e8 90 01 02 00 00 03 44 24 04 89 44 24 04 8b 0c 24 41 89 0c 24 90 00 } //01 00 
		$a_01_2 = {8b 4b 3c 8b 74 19 28 03 f3 83 c4 04 89 75 dc ff d6 8b 5d dc 93 90 cc } //01 00 
		$a_01_3 = {8b 4b 3c 8b 44 0b 28 03 c3 83 c4 04 89 45 d8 ff d0 8b 5d d8 93 90 cc } //00 00 
	condition:
		any of ($a_*)
 
}