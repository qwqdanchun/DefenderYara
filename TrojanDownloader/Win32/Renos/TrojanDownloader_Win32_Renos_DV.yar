
rule TrojanDownloader_Win32_Renos_DV{
	meta:
		description = "TrojanDownloader:Win32/Renos.DV,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_03_0 = {c7 45 fc 14 00 00 00 8b 45 0c ff 30 8d 45 ac 50 e8 90 01 03 ff 50 6a 01 6a 0c ff 75 c4 e8 90 00 } //3
		$a_01_1 = {67 65 74 66 6e 33 32 00 } //1 敧晴㍮2
		$a_01_2 = {47 65 74 41 64 76 49 44 00 } //1
		$a_01_3 = {47 65 74 44 6f 6d 65 6e 00 } //1
		$a_01_4 = {52 65 70 6c 61 63 65 5f 75 72 6c 00 } //1 敒汰捡彥牵l
		$a_00_5 = {50 00 41 00 5a 00 55 00 5a 00 55 00 00 00 } //1
		$a_00_6 = {77 00 65 00 72 00 74 00 79 00 75 00 2e 00 73 00 6c 00 72 00 00 00 } //1
		$a_00_7 = {75 00 65 00 73 00 69 00 75 00 71 00 63 00 72 00 2e 00 65 00 78 00 65 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}