
rule TrojanDownloader_BAT_NRatTiny_B_MSR{
	meta:
		description = "TrojanDownloader:BAT/NRatTiny.B!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 4e 65 74 43 6c 69 65 6e 74 90 0f 01 00 5c 4e 65 74 43 6c 69 65 6e 74 90 0f 01 00 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 4e 65 74 43 6c 69 65 6e 74 90 0f 01 00 2e 70 64 62 90 00 } //02 00 
		$a_00_1 = {1a 28 10 00 00 0a 72 01 00 00 70 28 11 00 00 0a 80 04 00 00 04 7e 04 00 00 04 28 12 00 00 0a 26 1f 0a 8d 11 00 00 01 0a 12 00 28 02 00 00 06 06 0b 16 0c 2b 0c 07 08 9a 6f 13 00 00 0a 08 17 } //02 00 
		$a_02_2 = {04 0a 02 28 90 01 04 72 90 01 04 0b 0c 16 0d 2b 21 08 09 93 13 04 07 11 04 06 28 90 01 04 13 05 12 05 28 90 01 04 28 90 01 04 0b 09 17 58 0d 09 08 8e 69 32 d9 07 2a 90 00 } //01 00 
		$a_02_3 = {02 03 61 d1 10 00 02 2a 90 01 01 02 28 90 01 04 2a 90 00 } //01 00 
		$a_00_4 = {41 75 74 78 78 52 55 4e } //00 00  AutxxRUN
		$a_00_5 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}