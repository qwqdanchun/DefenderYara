
rule TrojanDownloader_Win32_Banload_QF{
	meta:
		description = "TrojanDownloader:Win32/Banload.QF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {61 00 76 00 74 00 68 00 65 00 6b 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_03_1 = {6d 00 64 00 6b 00 74 00 61 00 73 00 6b 00 2e 00 65 00 78 00 65 00 90 0a 4a 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 90 02 0f 73 00 79 00 73 00 74 00 65 00 6d 00 90 00 } //1
		$a_01_2 = {73 74 72 45 6d 61 69 6c 54 4f 4f 00 73 74 72 45 6d 61 69 6c 54 4f 4f 4f 00 00 00 00 73 74 72 53 65 6e 64 4d 61 69 6c 00 73 74 72 4c 6f 67 69 6e 53 65 6e 64 00 00 00 00 73 74 72 53 65 6e 68 61 53 65 6e 64 00 00 00 00 73 74 72 45 6d 61 69 6c 54 4f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}