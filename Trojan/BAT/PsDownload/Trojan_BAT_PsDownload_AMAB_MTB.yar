
rule Trojan_BAT_PsDownload_AMAB_MTB{
	meta:
		description = "Trojan:BAT/PsDownload.AMAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {02 02 7b 03 00 00 04 17 58 20 ff 00 00 00 5f 7d 03 00 00 04 02 02 7b 04 00 00 04 02 7b 02 00 00 04 02 7b 03 00 00 04 91 58 20 ff 00 00 00 5f 7d 04 00 00 04 02 7b 02 00 00 04 02 7b 03 00 00 04 02 7b 04 00 00 04 28 09 00 00 06 03 02 7b 02 00 00 04 02 7b 02 00 00 04 02 7b 03 00 00 04 91 02 7b 02 00 00 04 02 7b 04 00 00 04 91 58 20 ff 00 00 00 5f 91 61 d2 2a } //01 00 
		$a_01_1 = {02 03 91 0a 02 03 02 04 91 9c 02 04 06 9c } //01 00 
		$a_81_2 = {35 34 62 39 62 66 32 34 2d 34 34 35 38 2d 34 35 32 39 2d 61 36 66 37 2d 62 66 66 37 64 37 62 34 32 37 37 64 } //01 00 
		$a_81_3 = {36 75 44 33 62 79 37 57 53 36 4c 51 69 6f 73 4b 54 35 46 6c 45 4a 38 44 63 73 34 46 61 45 64 53 77 36 32 32 41 30 7a 4a 57 71 65 66 64 6d 5a 51 48 75 54 74 74 41 } //00 00 
	condition:
		any of ($a_*)
 
}