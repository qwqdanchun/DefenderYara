
rule Trojan_Win32_Havoc_A{
	meta:
		description = "Trojan:Win32/Havoc.A,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 11 00 00 "
		
	strings :
		$a_03_0 = {2c 06 00 00 00 90 01 02 48 90 01 02 5c 06 00 00 00 90 01 06 48 8b 90 01 01 5c 06 00 00 90 01 01 f6 99 5a 2e e8 90 01 04 48 8b 90 01 01 48 90 01 02 4c 02 00 00 48 8b 90 01 01 5c 06 00 00 90 01 01 23 db 07 03 e8 90 01 04 48 8b 90 01 01 48 90 01 02 44 02 00 00 48 8b 90 01 01 5c 06 00 00 90 01 01 da 81 b3 c0 e8 90 01 04 48 8b 90 01 01 48 90 01 02 54 02 00 00 48 8b 90 01 01 5c 06 00 00 90 01 01 d7 71 ba 70 e8 90 01 04 48 8b 90 01 01 48 90 01 02 64 02 00 00 48 8b 90 01 01 5c 06 00 00 90 01 01 88 2b 49 8e e8 90 01 04 48 8b 90 01 01 48 90 01 02 84 02 00 00 48 8b 90 01 01 5c 06 00 00 90 01 01 ef f0 a1 3a e8 90 0a aa 00 48 90 00 } //16
		$a_03_1 = {01 20 00 00 90 01 08 03 20 00 00 90 01 08 c4 09 00 00 90 01 08 ce 09 00 00 90 01 08 d8 09 00 00 90 01 08 34 08 00 00 90 01 08 16 00 00 00 90 01 08 18 00 00 00 90 01 08 1a 00 00 00 90 01 08 28 00 00 00 90 01 08 5c 00 00 00 90 0a d4 00 0b 00 00 00 90 01 08 64 00 00 00 90 01 08 15 00 00 00 90 01 08 10 10 00 00 90 01 08 0c 00 00 00 90 01 08 90 02 0c 0f 00 00 00 90 01 08 14 00 00 00 90 00 } //1
		$a_01_2 = {f6 99 5a 2e } //1
		$a_01_3 = {da 81 b3 c0 } //1
		$a_01_4 = {d7 71 ba 70 } //1
		$a_01_5 = {88 2b 49 8e } //1
		$a_01_6 = {ef f0 a1 3a } //1
		$a_01_7 = {f5 39 34 7c } //1
		$a_01_8 = {2a 92 12 d8 } //1
		$a_01_9 = {8d f1 4f 84 } //1
		$a_01_10 = {5b bc ce 73 } //1
		$a_01_11 = {59 24 93 b8 } //1
		$a_01_12 = {02 9e d0 c2 } //1
		$a_01_13 = {e5 36 26 ae } //1
		$a_01_14 = {5c 3c b4 f3 } //1
		$a_01_15 = {2f 87 d8 1c } //1
		$a_01_16 = {d7 53 22 ac } //1
	condition:
		((#a_03_0  & 1)*16+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=16
 
}