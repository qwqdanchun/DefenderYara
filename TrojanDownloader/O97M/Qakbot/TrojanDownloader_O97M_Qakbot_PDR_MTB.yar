
rule TrojanDownloader_O97M_Qakbot_PDR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.PDR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 65 77 74 68 69 6e 6b 63 6f 6e 65 63 74 6f 72 65 73 2e 63 6f 6d 2e 62 72 2f 46 5a 61 79 69 57 79 4d 61 2f 43 62 76 6e 68 2e 70 6e 67 } //01 00 
		$a_01_1 = {74 72 75 63 6b 65 72 2e 66 69 74 2f 66 6f 38 4c 77 79 72 30 2f 43 62 76 6e 68 2e 70 6e 67 } //01 00 
		$a_01_2 = {6d 61 72 63 69 6f 69 64 61 6c 69 6e 6f 2e 63 6f 6d 2e 62 72 2f 63 7a 41 7a 62 32 42 63 58 67 2f 43 62 76 6e 68 2e 70 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}