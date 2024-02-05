
rule TrojanDownloader_BAT_XWormRAT_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/XWormRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {8e 69 5d 91 11 90 01 01 11 90 01 01 91 61 d2 6f 90 00 } //01 00 
		$a_01_1 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_01_2 = {47 65 74 4d 65 74 68 6f 64 73 } //00 00 
	condition:
		any of ($a_*)
 
}