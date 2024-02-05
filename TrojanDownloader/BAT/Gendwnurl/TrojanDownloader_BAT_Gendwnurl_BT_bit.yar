
rule TrojanDownloader_BAT_Gendwnurl_BT_bit{
	meta:
		description = "TrojanDownloader:BAT/Gendwnurl.BT!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 61 00 6e 00 67 00 75 00 2e 00 75 00 63 00 6f 00 7a 00 2e 00 6e 00 65 00 74 00 2f 00 90 02 06 2e 00 72 00 61 00 72 00 90 00 } //01 00 
		$a_03_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_03_2 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 90 02 10 2e 00 72 00 61 00 72 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}