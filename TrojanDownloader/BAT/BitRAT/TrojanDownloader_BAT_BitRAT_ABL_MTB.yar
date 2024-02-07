
rule TrojanDownloader_BAT_BitRAT_ABL_MTB{
	meta:
		description = "TrojanDownloader:BAT/BitRAT.ABL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0d 08 09 6f 90 01 03 0a 00 09 6f 90 01 03 0a 80 90 01 03 04 16 13 04 2b 1f 00 7e 90 01 03 04 11 04 7e 90 01 03 04 11 04 91 20 90 01 03 00 59 d2 9c 00 11 04 17 58 13 04 11 04 7e 90 01 03 04 8e 69 fe 04 13 05 11 05 2d d0 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_3 = {41 5a 4c 49 4a 45 38 55 33 59 } //00 00  AZLIJE8U3Y
	condition:
		any of ($a_*)
 
}