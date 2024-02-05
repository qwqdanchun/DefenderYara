
rule TrojanDownloader_BAT_Tiny_RDA_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tiny.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 66 34 33 36 65 63 30 2d 64 65 35 38 2d 34 63 35 65 2d 38 38 62 63 2d 66 31 32 36 33 65 39 32 39 37 61 62 } //01 00 
		$a_01_1 = {2f 00 2f 00 6c 00 35 00 37 00 31 00 35 00 2e 00 69 00 6e 00 2f 00 31 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {49 7a 6f 68 79 72 7a } //01 00 
		$a_01_3 = {4d 53 45 49 6e 73 74 61 6c 6c 20 50 61 63 6b 61 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}