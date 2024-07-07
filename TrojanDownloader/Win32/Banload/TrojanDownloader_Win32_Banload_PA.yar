
rule TrojanDownloader_Win32_Banload_PA{
	meta:
		description = "TrojanDownloader:Win32/Banload.PA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {5c 42 72 6f 77 73 65 72 48 65 6c 70 65 72 2e 64 6c 6c 00 90 02 50 2e 6a 70 67 00 90 02 50 2e 6a 70 67 00 90 02 80 68 74 74 70 3a 2f 2f 90 00 } //1
		$a_00_1 = {61 00 74 00 74 00 72 00 69 00 62 00 20 00 2b 00 53 00 20 00 2b 00 48 00 } //1 attrib +S +H
		$a_00_2 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2f 00 73 00 20 00 } //1 regsvr32 /s 
		$a_00_3 = {22 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6a 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 64 00 6c 00 6c 00 22 00 } //1 "c:\windows\system32\jscript.dll"
		$a_00_4 = {22 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 64 00 6c 00 6c 00 22 00 } //1 "c:\windows\system32\vbscript.dll"
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}