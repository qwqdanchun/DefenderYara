
rule TrojanDownloader_Win32_VB_IJ{
	meta:
		description = "TrojanDownloader:Win32/VB.IJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //1 Wscript.shell
		$a_02_1 = {77 00 73 00 2e 00 72 00 75 00 6e 00 20 00 22 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 90 02 10 5c 00 31 00 2e 00 65 00 78 00 65 00 22 00 90 00 } //1
		$a_02_2 = {69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 30 2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}