
rule _PseudoThreat_c0000b83{
	meta:
		description = "!PseudoThreat_c0000b83,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0f 00 00 "
		
	strings :
		$a_00_0 = {53 70 79 77 61 72 65 4c 6f 63 6b 65 64 } //1 SpywareLocked
		$a_00_1 = {73 70 79 6c 6f 63 6b 65 64 2e 63 6f 6d 2f 3f 61 66 66 3d } //2 spylocked.com/?aff=
		$a_00_2 = {6b 65 72 61 74 6f 6d 69 72 32 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d } //3 keratomir2.biz/get.php?partner=
		$a_00_3 = {6b 65 72 61 74 6f 6d 69 72 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d } //3 keratomir.biz/get.php?partner=
		$a_00_4 = {70 6f 72 6e 6d 61 67 2e 63 6f 6d 2f 69 6e 73 74 61 6c 6c 2f } //1 pornmag.com/install/
		$a_00_5 = {59 6f 75 72 20 73 79 73 74 65 6d 20 69 73 20 69 6e 66 65 63 74 65 64 } //2 Your system is infected
		$a_00_6 = {41 72 65 20 79 6f 75 20 66 75 63 6b 69 6e 67 20 63 72 61 7a 79 20 6d 61 6e 3f } //1 Are you fucking crazy man?
		$a_00_7 = {41 6c 6c 20 70 6f 72 6e 20 6c 69 6e 6b 73 20 77 68 61 74 20 61 72 65 20 77 6f 72 74 68 20 79 6f 75 72 20 76 69 73 69 74 2e } //1 All porn links what are worth your visit.
		$a_02_8 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 [0-02] 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d [0-04] 53 70 79 77 61 72 65 4c 6f 63 6b 65 64 } //5
		$a_02_9 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 [0-02] 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d [0-04] 53 70 79 6c 6f 63 6b 65 64 } //5
		$a_02_10 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 [0-02] 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d [0-04] 6b 48 41 74 77 5b 53 5d } //5
		$a_01_11 = {50 4c 4c 48 02 17 17 53 5d 4a 59 4c 57 55 51 4a } //5 䱐䡌ᜂ北䩝䱙啗䩑
		$a_02_12 = {81 7d 14 03 02 00 00 74 20 81 7d 14 04 02 00 00 74 17 81 7d 14 01 02 00 00 74 0e 81 7d 14 05 04 00 00 74 05 e9 8e 00 00 00 e8 [0-05] 83 f8 01 75 07 e8 [0-05] eb 2d 80 3d } //5
		$a_02_13 = {81 7d 14 03 02 00 00 74 1d 81 7d 14 04 02 00 00 74 14 81 7d 14 01 02 00 00 74 0b 81 7d 14 05 04 00 00 74 02 eb 6b e8 [0-05] 83 f8 01 75 07 e8 } //5
		$a_02_14 = {8b ec 83 c4 f8 6a 01 6a 00 ff 75 08 8d 05 [0-04] 50 8d 05 [0-04] 50 6a 00 ff 15 [0-04] b8 01 00 00 00 c9 } //4
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_02_8  & 1)*5+(#a_02_9  & 1)*5+(#a_02_10  & 1)*5+(#a_01_11  & 1)*5+(#a_02_12  & 1)*5+(#a_02_13  & 1)*5+(#a_02_14  & 1)*4) >=12
 
}