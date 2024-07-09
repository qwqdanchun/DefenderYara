
rule Trojan_O97M_MPMacroTestFile_B_mhstr{
	meta:
		description = "Trojan:O97M/MPMacroTestFile.B!mhstr,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {69 6f 61 76 74 65 73 74 6d 61 67 69 63 [0-05] 7b 36 30 66 62 64 62 30 65 2d 37 39 30 32 2d 34 61 66 37 2d 39 33 30 33 2d 35 39 64 62 35 64 34 39 30 39 30 65 7d [0-05] 7b 64 30 62 35 38 30 65 32 2d 36 31 32 34 2d 34 63 62 39 2d 38 65 33 61 2d 33 39 31 39 34 64 31 65 34 64 62 32 7d } //1
		$a_02_1 = {69 6f 61 76 74 65 73 74 6d 61 67 69 63 [0-05] 7b 37 32 66 64 64 65 36 36 2d 39 34 39 31 2d 34 35 31 36 2d 38 34 38 31 2d 37 66 63 38 37 39 62 63 63 38 64 31 7d [0-05] 7b 32 61 32 63 62 39 32 34 2d 34 66 30 35 2d 34 62 39 39 2d 62 39 33 31 2d 66 38 63 38 35 34 63 62 32 38 37 61 7d } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}