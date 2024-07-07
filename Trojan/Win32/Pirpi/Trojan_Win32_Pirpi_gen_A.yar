
rule Trojan_Win32_Pirpi_gen_A{
	meta:
		description = "Trojan:Win32/Pirpi.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 "
		
	strings :
		$a_03_0 = {33 ca 8b 45 08 33 d2 66 8b 14 45 90 01 04 33 c0 66 a1 90 01 04 33 d0 2b ca 90 00 } //1
		$a_03_1 = {8d 7a 1c 89 82 60 09 00 00 89 82 64 09 00 00 90 01 2a b9 41 00 00 00 8d ba 1c 08 00 00 90 00 } //1
		$a_01_2 = {8a 04 31 84 c0 74 09 3a c3 74 05 32 c3 88 04 31 41 3b cd 72 eb } //1
		$a_01_3 = {89 82 70 09 00 00 b8 02 00 00 00 5f 5e } //1
		$a_03_4 = {8a 08 80 f1 90 01 01 8b 95 90 01 04 88 0a 8b 85 90 01 04 83 c0 01 90 09 09 00 2c 73 24 90 00 } //1
		$a_03_5 = {6a 04 50 56 ff d5 83 c7 04 4b 75 cf 90 09 1b 00 3d 90 01 04 74 09 35 90 1b 01 90 00 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*2) >=2
 
}