
rule Worm_Win32_Parkis_A{
	meta:
		description = "Worm:Win32/Parkis.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 0c 00 00 "
		
	strings :
		$a_03_0 = {83 f8 01 74 44 6a ff 8d 45 90 01 01 66 8b 15 90 00 } //1
		$a_01_1 = {5b 0f 85 78 ff ff ff a1 d8 66 54 00 e8 } //1
		$a_01_2 = {3a 00 5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 :\Settings\setting.exe
		$a_01_3 = {5c 00 30 00 2e 00 65 00 78 00 65 00 } //1 \0.exe
		$a_01_4 = {2f 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 2e 00 74 00 78 00 74 00 } //1 /setting.txt
		$a_01_5 = {6d 00 6f 00 75 00 73 00 65 00 78 00 00 00 } //1
		$a_01_6 = {6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 00 00 } //1
		$a_01_7 = {6c 00 6f 00 61 00 64 00 75 00 72 00 6c 00 00 00 } //1
		$a_01_8 = {6c 00 6f 00 61 00 64 00 70 00 63 00 00 00 } //1
		$a_01_9 = {6b 00 69 00 73 00 73 00 70 00 61 00 72 00 74 00 79 00 2e 00 72 00 75 00 } //1 kissparty.ru
		$a_01_10 = {6d 00 65 00 74 00 68 00 6f 00 64 00 63 00 61 00 64 00 2e 00 72 00 75 00 } //1 methodcad.ru
		$a_01_11 = {63 00 61 00 64 00 72 00 65 00 74 00 65 00 73 00 74 00 2e 00 72 00 75 00 } //1 cadretest.ru
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=9
 
}