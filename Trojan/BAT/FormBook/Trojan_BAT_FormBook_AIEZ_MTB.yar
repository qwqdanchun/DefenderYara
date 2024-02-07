
rule Trojan_BAT_FormBook_AIEZ_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AIEZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 13 04 2b 35 00 08 09 11 04 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 07 06 28 90 01 03 06 d2 6f 90 01 03 0a 00 00 11 04 17 58 90 00 } //01 00 
		$a_01_1 = {4e 00 65 00 74 00 53 00 79 00 6e 00 63 00 4f 00 62 00 73 00 65 00 72 00 76 00 65 00 72 00 } //01 00  NetSyncObserver
		$a_01_2 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_3 = {48 00 79 00 76 00 65 00 73 00 } //00 00  Hyves
	condition:
		any of ($a_*)
 
}