
rule TrojanDownloader_BAT_Remcos_NY_MTB{
	meta:
		description = "TrojanDownloader:BAT/Remcos.NY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 08 06 08 8e 69 5d 91 07 06 91 61 d2 6f 90 01 01 00 00 0a 06 17 58 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}