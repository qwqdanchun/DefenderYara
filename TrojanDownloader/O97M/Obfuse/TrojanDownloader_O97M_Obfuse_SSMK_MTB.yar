
rule TrojanDownloader_O97M_Obfuse_SSMK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SSMK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 44 61 74 61 54 79 70 65 20 3d 20 6b 69 70 66 74 72 72 77 78 6e 79 70 6e 7a 66 28 22 36 32 36 39 36 65 32 65 36 38 22 29 20 26 20 6b 69 70 66 74 72 72 77 78 6e 79 70 6e 7a 66 28 22 36 35 37 38 22 29 } //01 00  .DataType = kipftrrwxnypnzf("62696e2e68") & kipftrrwxnypnzf("6578")
		$a_01_1 = {65 6e 74 72 79 5f 63 6c 61 73 73 20 3d 20 6b 69 70 66 74 72 72 77 78 6e 79 70 6e 7a 66 28 22 34 64 36 35 22 29 20 26 20 6b 69 70 66 74 72 72 77 78 6e 79 70 6e 7a 66 28 22 37 34 36 35 37 32 35 30 37 32 36 35 37 34 36 35 37 32 22 29 } //01 00  entry_class = kipftrrwxnypnzf("4d65") & kipftrrwxnypnzf("746572507265746572")
		$a_01_2 = {26 20 6b 69 70 66 74 72 72 77 78 6e 79 70 6e 7a 66 28 22 36 64 36 31 37 34 37 34 36 35 37 32 22 29 29 } //01 00  & kipftrrwxnypnzf("6d6174746572"))
		$a_03_3 = {2e 44 61 74 61 54 79 70 65 20 3d 20 90 02 25 28 22 36 32 36 39 36 65 32 65 36 38 22 29 20 26 20 90 02 25 28 22 36 35 37 38 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}