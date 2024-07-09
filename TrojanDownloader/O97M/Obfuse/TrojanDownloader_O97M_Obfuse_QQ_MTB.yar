
rule TrojanDownloader_O97M_Obfuse_QQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.QQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {24 45 4e 76 3a 74 65 4d 70 5c [0-10] 2e 22 20 26 20 4d 6f 64 75 6c 65 31 2e 4d 30 39 30 20 26 20 22 } //1
		$a_03_1 = {73 74 41 52 74 20 [0-01] 24 45 4e 76 3a 74 45 4d 50 5c [0-10] 2e 22 20 26 20 4d 6f 64 75 6c 65 31 2e 4d 30 39 30 } //1
		$a_01_2 = {3d 20 22 25 74 65 6d 70 25 22 20 26 } //1 = "%temp%" &
		$a_03_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 [0-10] 20 26 } //1
		$a_03_4 = {43 61 6c 6c 20 53 68 65 6c 6c 28 [0-15] 26 20 22 20 22 20 26 } //1
		$a_01_5 = {3d 20 22 74 20 73 79 73 74 65 6d 2e 6e 65 74 2e 77 45 42 63 6c 49 65 6e 22 20 26 20 22 54 22 20 26 20 22 29 22 } //1 = "t system.net.wEBclIen" & "T" & ")"
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}