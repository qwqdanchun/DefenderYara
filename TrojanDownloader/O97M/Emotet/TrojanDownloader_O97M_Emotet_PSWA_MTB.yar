
rule TrojanDownloader_O97M_Emotet_PSWA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PSWA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 45 54 55 90 02 0a 28 29 90 02 0f 52 4e 90 02 0a 65 90 02 0a 22 2c 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}