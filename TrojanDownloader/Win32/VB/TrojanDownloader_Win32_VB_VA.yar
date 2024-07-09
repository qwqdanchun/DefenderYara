
rule TrojanDownloader_Win32_VB_VA{
	meta:
		description = "TrojanDownloader:Win32/VB.VA,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {89 41 0c 6a 01 6a 68 8b 4d 08 8b 11 8b 45 08 50 ff 92 } //1
		$a_00_1 = {22 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 58 00 4d 00 4c 00 48 00 54 00 54 00 50 00 00 00 06 00 00 00 47 00 45 00 54 00 00 00 4f 00 70 00 65 00 6e 00 00 00 } //1
		$a_02_2 = {69 00 70 00 61 00 64 00 74 00 76 00 [0-04] 2e 00 61 00 71 00 67 00 73 00 69 00 2e 00 69 00 6e 00 66 00 6f 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}