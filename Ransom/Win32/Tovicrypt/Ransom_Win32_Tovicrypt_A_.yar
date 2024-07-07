
rule Ransom_Win32_Tovicrypt_A_{
	meta:
		description = "Ransom:Win32/Tovicrypt.A!!Tovicrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 1a 00 00 "
		
	strings :
		$a_80_0 = {42 4f 54 49 44 42 4f 54 49 44 } //BOTIDBOTID  2
		$a_80_1 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 } //delete shadows  1
		$a_80_2 = {68 74 6d 6c 2e 6c 6e 6b } //html.lnk  1
		$a_80_3 = {62 6d 70 2e 6c 6e 6b } //bmp.lnk  1
		$a_80_4 = {74 78 74 2e 6c 6e 6b } //txt.lnk  1
		$a_80_5 = {00 55 30 30 30 30 30 39 00 } //  1
		$a_80_6 = {00 25 30 38 58 3a 25 30 38 58 3a 25 30 38 58 3a 25 30 38 58 00 } //  1
		$a_80_7 = {77 61 69 74 20 66 6f 72 20 61 20 5f 6d 69 72 61 63 6c 65 5f 20 61 6e 64 20 67 65 74 20 5f 79 6f 75 72 5f 20 50 52 49 43 45 20 44 4f 55 42 4c 45 44 21 } //wait for a _miracle_ and get _your_ PRICE DOUBLED!  1
		$a_80_8 = {31 32 33 2e 74 65 6d 70 00 } //123.temp  1
		$a_80_9 = {76 73 73 61 64 6d 69 6e 00 } //vssadmin  1
		$a_01_10 = {ba 23 bb 32 6e } //1
		$a_01_11 = {ba 49 57 72 40 } //1
		$a_01_12 = {ba 66 3b fb 31 } //1
		$a_01_13 = {ba 63 4f 1e 72 } //1
		$a_03_14 = {35 44 55 22 33 25 ff ff ff 7f 3b 45 90 01 01 74 90 01 01 8b 45 90 01 01 43 83 c7 04 3b 58 18 72 90 00 } //2
		$a_03_15 = {66 0f d6 45 f1 56 c7 45 ec 90 01 04 66 c7 45 f9 00 00 c6 45 fb 00 c7 45 f0 90 01 04 ff d0 90 00 } //1
		$a_01_16 = {3d c0 e6 0a 33 74 04 8b 1b eb } //1
		$a_03_17 = {b8 42 4d 00 00 66 89 45 90 01 01 8b 43 90 01 01 83 c0 0e 03 c1 c1 e6 02 03 c6 90 00 } //2
		$a_03_18 = {72 00 75 00 c7 45 90 01 01 6e 00 61 00 c7 45 90 01 01 73 00 00 00 90 00 } //1
		$a_03_19 = {81 7d fc 72 65 56 4d 75 90 01 01 81 7d f8 77 61 72 65 90 00 } //1
		$a_03_20 = {81 7d fc 65 70 79 68 75 90 01 01 81 7d f8 20 20 76 72 90 00 } //1
		$a_03_21 = {50 00 41 00 c7 90 02 03 42 00 2e 00 c7 90 02 03 4b 00 45 00 c7 90 02 03 59 00 00 00 90 00 } //2
		$a_03_22 = {52 00 45 00 c7 90 02 03 41 00 44 00 c7 90 02 03 4d 00 45 00 90 00 } //2
		$a_01_23 = {74 46 32 45 75 } //1 tF2Eu
		$a_01_24 = {34 68 34 62 75 } //1 4h4bu
		$a_03_25 = {50 00 50 00 c7 90 02 03 50 00 2e 00 c7 90 02 03 4b 00 45 00 c7 90 02 03 59 00 00 00 90 00 } //2
	condition:
		((#a_80_0  & 1)*2+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_03_14  & 1)*2+(#a_03_15  & 1)*1+(#a_01_16  & 1)*1+(#a_03_17  & 1)*2+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1+(#a_03_20  & 1)*1+(#a_03_21  & 1)*2+(#a_03_22  & 1)*2+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_03_25  & 1)*2) >=8
 
}