
rule Backdoor_Win64_Mozaakai_A{
	meta:
		description = "Backdoor:Win64/Mozaakai.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0d 00 00 "
		
	strings :
		$a_02_0 = {6e 00 6c 00 74 00 65 00 73 00 74 00 [0-04] 20 00 2f 00 64 00 6f 00 6d 00 61 00 69 00 6e 00 5f 00 74 00 72 00 75 00 73 00 74 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 5f 00 74 00 72 00 75 00 73 00 74 00 73 00 } //1
		$a_02_1 = {6e 6c 74 65 73 74 [0-04] 20 2f 64 6f 6d 61 69 6e 5f 74 72 75 73 74 73 20 2f 61 6c 6c 5f 74 72 75 73 74 73 } //1
		$a_80_2 = {6e 65 74 20 76 69 65 77 20 2f 61 6c 6c 20 2f 64 6f 6d 61 69 6e } //net view /all /domain  1
		$a_02_3 = {50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 [0-30] 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 } //1
		$a_02_4 = {50 6f 77 65 72 53 68 65 6c 6c 2e 65 78 65 20 [0-30] 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 42 79 70 61 73 73 } //1
		$a_02_5 = {6f 00 73 00 5b 00 31 00 5d 00 3d 00 [0-10] 26 00 6f 00 73 00 5b 00 32 00 5d 00 3d 00 [0-10] 26 00 6f 00 73 00 5b 00 33 00 5d 00 3d 00 } //1
		$a_02_6 = {6f 73 5b 31 5d 3d [0-10] 26 6f 73 5b 32 5d 3d [0-10] 26 6f 73 5b 33 5d 3d } //1
		$a_80_7 = {2e 62 61 7a 61 72 2f 61 70 69 2f 76 } //.bazar/api/v  1
		$a_80_8 = {6e 65 77 67 61 6d 65 2e 62 61 7a 61 72 } //newgame.bazar  1
		$a_80_9 = {74 68 65 67 61 6d 65 2e 62 61 7a 61 72 } //thegame.bazar  1
		$a_80_10 = {70 6f 72 74 67 61 6d 65 2e 62 61 7a 61 72 } //portgame.bazar  1
		$a_03_11 = {38 41 8b c3 f7 f3 [0-03] 30 44 8b d8 [0-03] 39 ?? ?? 41 8a c1 34 01 c0 e0 05 04 07 02 } //1
		$a_01_12 = {83 79 3c 00 75 e3 3c 49 0f 84 b0 00 00 00 3c 4c 0f 84 9f 00 00 00 3c 54 0f 84 8e 00 00 00 3c 68 74 6c 3c 6a 74 5c 3c 6c 74 34 3c 74 74 24 3c 77 74 14 3c 7a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_80_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_03_11  & 1)*1+(#a_01_12  & 1)*1) >=6
 
}