
rule TrojanDownloader_BAT_PoisonIvy_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/PoisonIvy.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 09 9a 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 13 04 08 09 11 04 9c 00 09 17 58 0d 09 07 8e 69 fe 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}