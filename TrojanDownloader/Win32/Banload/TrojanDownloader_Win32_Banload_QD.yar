
rule TrojanDownloader_Win32_Banload_QD{
	meta:
		description = "TrojanDownloader:Win32/Banload.QD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_02_0 = {52 00 65 00 63 00 65 00 69 00 74 00 61 00 90 01 02 2e 00 64 00 63 00 78 00 90 00 } //2
		$a_00_1 = {64 00 65 00 73 00 63 00 6f 00 2e 00 65 00 78 00 65 00 } //1 desco.exe
		$a_00_2 = {63 00 73 00 73 00 79 00 73 00 2e 00 65 00 78 00 65 00 } //1 cssys.exe
		$a_03_3 = {68 00 04 00 00 68 90 01 04 a1 90 01 04 50 e8 90 01 04 6a 00 ba 90 01 04 8b 0d 90 01 04 b8 90 01 04 e8 90 01 04 e8 90 01 04 83 3d 90 01 04 00 75 c1 90 00 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*2) >=5
 
}