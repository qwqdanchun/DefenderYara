
rule TrojanDownloader_BAT_Vidar_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/Vidar.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {94 58 18 28 90 01 01 00 00 06 5d 94 13 06 11 0a 11 04 07 11 04 91 11 06 61 d2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}