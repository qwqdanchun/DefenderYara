
rule TrojanDownloader_AndroidOS_SAgnt_C_MTB{
	meta:
		description = "TrojanDownloader:AndroidOS/SAgnt.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 6f 6b 6f 53 44 4b } //01 00 
		$a_01_1 = {63 6f 6d 2f 6d 6f 62 69 6c 65 2f 69 6e 64 69 61 70 70 2f 62 } //01 00 
		$a_01_2 = {2f 74 72 61 63 6b 2e 6d 74 72 61 63 6b 69 6e 67 2e 6d 6f 62 69 2f 70 61 63 6b 61 67 65 } //01 00 
		$a_01_3 = {63 6f 6d 2f 62 62 6d 2f 64 6f 77 6e 6c 6f 61 64 } //01 00 
		$a_01_4 = {63 6f 70 79 54 6f 53 44 43 61 72 64 } //01 00 
		$a_01_5 = {63 70 69 64 2e 74 78 74 } //00 00 
	condition:
		any of ($a_*)
 
}