
rule Ransom_Win32_Exxroute_E_{
	meta:
		description = "Ransom:Win32/Exxroute.E!!Exxroute.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 0a 00 00 "
		
	strings :
		$a_00_0 = {4d 65 6d 53 74 72 65 61 6d } //1 MemStream
		$a_00_1 = {77 63 72 79 70 74 32 } //1 wcrypt2
		$a_01_2 = {68 04 80 00 00 } //1
		$a_01_3 = {68 01 68 00 00 } //1
		$a_01_4 = {8b 4c 24 08 8b 44 24 04 83 c1 05 64 89 02 ff d1 c2 0c 00 } //1
		$a_03_5 = {ff ff 42 4d 8b 85 90 01 01 ff ff ff 83 c0 36 89 85 90 01 01 ff ff ff c7 85 90 01 01 ff ff ff 36 00 00 00 90 00 } //1
		$a_03_6 = {6a 20 53 e8 90 01 04 85 c0 0f 84 90 01 04 6a 00 68 80 00 00 00 6a 03 6a 00 6a 03 68 00 00 00 c0 53 e8 90 00 } //2
		$a_03_7 = {10 08 00 00 76 90 01 01 eb 02 7e 90 01 01 6a 00 6a 00 8b 45 90 01 01 8b 55 90 01 01 2d 10 08 00 00 83 da 00 90 00 } //2
		$a_03_8 = {ff e8 03 00 00 75 0d 81 7d 90 01 01 e8 03 00 00 0f 84 90 00 } //2
		$a_03_9 = {75 0b 81 7d 90 01 01 00 00 01 00 76 90 01 01 eb 02 7e 90 01 01 6a 00 8d 45 90 01 01 50 68 00 00 01 00 8d 85 90 01 02 fe ff 50 53 e8 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2+(#a_03_9  & 1)*2) >=6
 
}