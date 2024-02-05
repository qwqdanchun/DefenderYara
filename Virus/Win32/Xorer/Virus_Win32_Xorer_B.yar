
rule Virus_Win32_Xorer_B{
	meta:
		description = "Virus:Win32/Xorer.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {bf 38 a5 00 10 f2 ae f7 d1 2b f9 8b d9 8b f7 83 c9 ff 8b fa f2 ae 8b cb 4f c1 e9 02 f3 a5 8b cb 8d 54 24 3c 83 e1 03 f3 a4 8d bc 24 10 05 00 00 83 c9 ff f2 ae f7 d1 2b f9 8b c1 8b f7 } //01 00 
		$a_01_1 = {bf 2c a5 00 10 83 c9 ff f2 ae f7 d1 2b f9 c6 44 24 3f 00 8b f7 8b d9 8b fa 83 c9 ff f2 ae 8b cb 4f c1 e9 02 f3 a5 8b cb 8d 54 24 3c 83 e1 03 f3 a4 8d bc 24 10 05 00 00 83 c9 ff f2 ae f7 d1 2b f9 8b c1 8b f7 8b fa 8d 54 24 3c c1 e9 02 f3 a5 8b c8 33 c0 83 e1 03 f3 a4 bf 20 a5 00 10 } //01 00 
		$a_00_2 = {5c 7e 2e 65 78 65 } //01 00 
		$a_00_3 = {30 33 37 35 38 39 2e 6c 6f 67 } //01 00 
		$a_00_4 = {5c 63 6f 6d 5c 6c 73 61 73 73 2e 65 78 65 } //01 00 
		$a_01_5 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 61 66 65 42 6f 6f 74 5c 4e 65 74 77 6f 72 6b 5c 7b 34 44 33 36 45 39 36 37 2d 45 33 32 35 2d 31 31 43 45 2d 42 46 43 31 2d 30 38 30 30 32 42 45 31 30 33 31 38 7d 00 } //01 00 
		$a_01_6 = {72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 53 75 70 65 72 48 69 64 64 65 6e 00 00 4e 6f 44 72 69 76 65 54 79 70 65 41 75 74 6f 52 75 6e 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}