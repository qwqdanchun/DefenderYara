
rule TrojanDownloader_BAT_Remcos_MBBI_MTB{
	meta:
		description = "TrojanDownloader:BAT/Remcos.MBBI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_81_0 = {38 30 2e 36 36 2e 37 35 2e 33 36 } //01 00  80.66.75.36
		$a_01_1 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_4 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}