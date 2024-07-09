
rule TrojanDownloader_Win32_Bulilit_A{
	meta:
		description = "TrojanDownloader:Win32/Bulilit.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {52 75 6e 6d 65 41 74 53 74 61 72 74 75 70 [0-08] 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 72 75 6e [0-0a] 69 72 73 78 78 64 66 64 74 4e 61 6d 65 00 } //1
		$a_02_1 = {68 65 6c 6c 6f 68 74 74 70 3a 2f 2f [0-20] 3a [0-04] 2f [0-02] 2f 63 6f 75 6e 74 2e 61 73 70 } //1
		$a_02_2 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 30 30 30 30 30 30 30 30 30 30 30 30 [0-10] 2e 64 6c 6c [0-08] 2e 65 78 65 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}