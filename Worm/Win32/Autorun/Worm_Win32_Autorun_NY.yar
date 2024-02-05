
rule Worm_Win32_Autorun_NY{
	meta:
		description = "Worm:Win32/Autorun.NY,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 7a 6f 6b 72 61 53 69 7a 6f 6b 72 61 53 00 00 ff ff ff ff 09 00 00 00 72 65 62 79 63 2e 74 6d 70 00 00 00 } //01 00 
		$a_01_1 = {64 61 77 69 6e 2e 65 78 65 } //01 00 
		$a_01_2 = {4f 43 61 63 68 65 00 00 ff ff ff ff 2f 00 00 00 2e 5c 4d 53 4f 43 61 63 68 65 5c 39 30 30 30 30 38 30 34 2d 36 30 30 30 2d 31 31 44 33 2d 38 43 46 45 2d 30 31 35 30 30 34 38 33 38 33 43 39 00 ff ff ff ff 0b 00 00 00 61 75 74 6f 72 75 6e 2e 69 6e 66 00 ff ff ff ff 09 00 00 00 5b 41 75 74 6f 52 75 6e 5d 00 00 00 ff ff ff ff 43 00 00 00 6f 70 65 6e 3d 2e 5c 4d 53 4f 43 61 63 68 65 5c 39 30 30 30 30 38 30 34 2d 36 30 30 30 2d 31 31 44 33 2d 38 43 46 45 2d 30 31 35 30 30 34 38 33 38 33 43 39 5c 4b 42 39 31 35 38 36 35 2e 65 78 65 20 2e 00 ff ff ff ff 4b 00 00 00 73 68 65 6c } //01 00 
		$a_01_3 = {6a 05 68 14 ca 40 00 8d 45 e0 e8 cd a3 ff ff 8b 45 e0 8a 10 8d 45 e4 e8 24 79 ff ff ff 75 e4 68 30 ca 40 00 8d 45 e8 ba 03 00 00 00 e8 77 7a ff ff 8b 45 e8 e8 a7 7b ff ff 50 e8 79 90 ff ff } //00 00 
	condition:
		any of ($a_*)
 
}