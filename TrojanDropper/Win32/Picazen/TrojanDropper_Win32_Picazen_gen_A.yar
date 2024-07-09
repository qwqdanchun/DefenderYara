
rule TrojanDropper_Win32_Picazen_gen_A{
	meta:
		description = "TrojanDropper:Win32/Picazen.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {8d 84 24 10 01 00 00 6a 00 6a 00 6a 02 6a 00 6a 00 68 00 00 00 40 50 ff 15 20 10 40 00 8d 4c 24 08 6a 00 } //2
		$a_01_1 = {c6 44 24 10 50 c6 44 24 11 4b c6 44 24 12 03 c6 44 24 13 04 } //2
		$a_02_2 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 68 00 66 00 62 00 6c 00 64 00 64 00 65 00 6c 00 2e 00 62 00 61 00 74 00 [0-06] 53 00 59 00 53 00 54 00 45 00 4d 00 52 00 4f 00 4f 00 54 00 } //1
		$a_02_3 = {6f 00 70 00 65 00 6e 00 [0-06] 25 00 73 00 5c 00 25 00 73 00 [0-04] 5c 00 [0-04] 54 00 45 00 4d 00 50 00 } //1
		$a_00_4 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 72 65 70 65 61 74 } //1 if exist "%s" goto repeat
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}