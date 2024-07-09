
rule TrojanSpy_Win32_Bancos_DI{
	meta:
		description = "TrojanSpy:Win32/Bancos.DI,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0b 00 00 "
		
	strings :
		$a_02_0 = {05 4c 69 6d 70 61 [0-08] 08 43 6f 6e 66 69 72 6d 61 [0-08] 06 4d 6f 64 75 6c 6f } //1
		$a_00_1 = {3d 5f 4e 65 78 74 50 61 72 74 5f 32 72 65 6c 72 66 6b 73 61 64 76 6e 71 69 6e 64 79 77 33 6e 65 72 61 73 64 66 } //1 =_NextPart_2relrfksadvnqindyw3nerasdf
		$a_03_2 = {31 43 6c 69 63 6b 13 00 [0-08] 49 6d 61 67 65 90 10 03 00 43 6c 69 63 6b } //1
		$a_02_3 = {63 6f 6e 66 69 72 6d 61 [0-10] 63 6c 69 63 6b } //1
		$a_02_4 = {53 65 6e 68 61 [0-05] 4b 65 79 50 72 65 73 73 } //1
		$a_02_5 = {61 67 65 6e 63 69 61 [0-10] 63 6f 6e 74 61 } //1
		$a_00_6 = {45 6d 62 65 64 64 65 64 20 57 65 62 20 42 72 6f 77 73 65 72 20 66 72 6f 6d 3a 20 68 74 74 70 3a 2f 2f 62 73 61 6c 73 61 2e 63 6f 6d 2f } //1 Embedded Web Browser from: http://bsalsa.com/
		$a_03_7 = {06 4c 69 6e 6b 73 32 [0-08] 47 6f 6f 67 6c 65 31 [0-12] 1b 50 65 72 73 6f 6e 61 6c 69 7a 61 72 62 61 72 72 61 64 65 74 61 72 65 66 61 73 31 } //1
		$a_00_8 = {53 00 63 00 70 00 61 00 64 00 5c 00 73 00 73 00 68 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 00 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 31 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 } //2
		$a_01_9 = {47 53 49 53 54 45 4d 41 2e 43 4f 44 53 49 53 54 45 4d 41 2c 20 47 53 49 53 54 45 4d 41 2e 4e 4f 4d 45 53 49 53 54 45 4d 41 } //-10 GSISTEMA.CODSISTEMA, GSISTEMA.NOMESISTEMA
		$a_01_10 = {52 4d 43 6c 61 73 73 69 73 } //-3 RMClassis
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1+(#a_03_7  & 1)*1+(#a_00_8  & 1)*2+(#a_01_9  & 1)*-10+(#a_01_10  & 1)*-3) >=6
 
}