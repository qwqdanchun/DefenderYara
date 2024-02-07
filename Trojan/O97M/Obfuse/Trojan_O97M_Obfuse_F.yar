
rule Trojan_O97M_Obfuse_F{
	meta:
		description = "Trojan:O97M/Obfuse.F,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 20 48 64 76 71 45 43 49 69 4e 44 43 4d 50 6a 20 2b 20 66 44 6c 71 53 47 4d 62 64 49 53 42 4e 20 2b 20 4c 69 7a 51 7a 4b 54 4c 20 2b 20 5a 53 71 6d 63 46 43 48 49 77 6b 4a 2c 20 76 62 48 69 64 65 } //01 00  Shell HdvqECIiNDCMPj + fDlqSGMbdISBN + LizQzKTL + ZSqmcFCHIwkJ, vbHide
		$a_01_1 = {20 26 20 53 74 72 52 65 76 65 72 73 65 28 53 74 72 52 65 76 65 72 73 65 28 22 } //01 00   & StrReverse(StrReverse("
		$a_01_2 = {76 73 75 77 75 6f 63 7a 6b 2e 52 75 6e 20 44 79 6a 6b 6d 77 74 7a 61 2e 55 65 61 64 6d 2c 20 30 2c 20 54 72 75 65 0d 0a 45 6e 64 20 53 75 62 } //01 00 
		$a_01_3 = {53 75 62 20 66 72 65 65 44 6f 63 75 6d 65 6e 74 32 28 69 29 0d 0a 57 69 74 68 20 55 73 65 72 46 6f 72 6d 31 0d 0a 49 66 20 69 20 3d 20 34 31 30 20 54 68 65 6e 20 53 68 65 6c 6c 20 2e 4c 61 73 74 54 65 78 74 2c 20 30 20 2a 20 69 0d 0a 45 6e 64 20 57 69 74 68 0d 0a 45 6e 64 20 53 75 62 } //00 00 
	condition:
		any of ($a_*)
 
}