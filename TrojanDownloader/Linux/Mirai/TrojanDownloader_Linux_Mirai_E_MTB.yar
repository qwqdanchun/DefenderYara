
rule TrojanDownloader_Linux_Mirai_E_MTB{
	meta:
		description = "TrojanDownloader:Linux/Mirai.E!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 00 47 45 54 20 2f 90 02 20 20 48 54 54 50 2f 31 2e 30 0d 0a 90 00 } //01 00 
		$a_03_1 = {48 78 00 10 48 6e ff ee 2f 03 61 ff ff ff fe 90 01 01 24 00 4f ef 00 0c 6c 22 48 78 00 90 01 01 48 79 80 00 03 90 01 01 48 78 00 01 61 ff ff ff fe 90 01 01 44 82 2f 02 61 ff ff ff fe 90 01 01 4f ef 00 10 45 ea 00 90 01 01 2f 0a 48 79 80 00 03 90 01 01 2f 03 61 ff ff ff fe 90 01 01 4f ef 00 0c b5 c0 67 0c 48 78 00 03 61 ff ff ff fe 90 01 01 58 8f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}