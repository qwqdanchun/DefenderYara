
rule TrojanDownloader_O97M_Obfuse_RVG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 CreateObject("wscript.shell")
		$a_02_1 = {2e 72 75 6e 20 [0-06] 20 26 20 61 52 6c 4d 79 78 28 22 63 6f 6d 6d 65 6e 74 73 22 29 20 26 20 61 6d 45 32 61 6b 20 26 20 [0-06] 20 26 20 61 6d 45 32 61 6b } //1
		$a_02_2 = {4f 70 65 6e 20 [0-06] 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1
		$a_02_3 = {2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 [0-06] 29 } //1
		$a_00_4 = {26 20 22 5c 6d 31 2e 63 6f 6d 22 } //1 & "\m1.com"
		$a_00_5 = {26 20 22 5c 6d 31 2e 78 73 6c 22 } //1 & "\m1.xsl"
		$a_00_6 = {3d 20 43 68 72 28 33 34 29 } //1 = Chr(34)
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}