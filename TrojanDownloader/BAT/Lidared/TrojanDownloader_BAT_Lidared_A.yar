
rule TrojanDownloader_BAT_Lidared_A{
	meta:
		description = "TrojanDownloader:BAT/Lidared.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 70 00 68 00 70 00 3f 00 76 00 65 00 72 00 3d 00 90 00 02 00 0a 00 7b 00 31 00 7d 00 26 00 64 00 61 00 69 00 6c 00 69 00 3d 00 90 00 02 00 06 00 26 00 6d 00 61 00 63 00 3d 00 7b 00 33 00 7d 00 26 00 6d 00 69 00 64 00 3d 00 7b 00 34 00 7d 00 26 00 70 00 69 00 64 00 3d 00 7b 00 35 00 7d 00 26 00 64 00 69 00 64 00 3d 00 7b 00 36 00 7d 00 26 00 62 00 62 00 3d 00 32 00 36 00 35 00 } //01 00 
		$a_01_1 = {2f 00 61 00 64 00 64 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 7b 00 31 00 7d 00 26 00 6d 00 61 00 63 00 3d 00 7b 00 33 00 7d 00 } //01 00 
		$a_01_2 = {2f 00 74 00 6f 00 6e 00 67 00 6a 00 69 00 2e 00 70 00 68 00 70 00 } //00 00 
		$a_00_3 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}