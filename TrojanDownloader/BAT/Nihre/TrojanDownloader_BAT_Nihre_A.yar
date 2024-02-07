
rule TrojanDownloader_BAT_Nihre_A{
	meta:
		description = "TrojanDownloader:BAT/Nihre.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 69 00 72 00 63 00 6d 00 64 00 } //01 00  nircmd
		$a_01_1 = {77 00 69 00 6e 00 20 00 68 00 69 00 64 00 65 00 20 00 69 00 74 00 69 00 74 00 6c 00 65 00 } //01 00  win hide ititle
		$a_01_2 = {62 00 65 00 61 00 74 00 74 00 72 00 6f 00 6a 00 61 00 6e 00 } //01 00  beattrojan
		$a_01_3 = {77 00 65 00 72 00 66 00 61 00 75 00 6c 00 74 00 } //01 00  werfault
		$a_01_4 = {48 69 64 65 57 69 6e 00 } //01 00  楈敤楗n
		$a_01_5 = {64 65 37 36 37 36 33 66 2d 39 61 30 31 2d 34 65 62 64 2d 39 39 64 63 2d 33 36 32 62 62 62 32 38 35 39 39 32 } //00 00  de76763f-9a01-4ebd-99dc-362bbb285992
	condition:
		any of ($a_*)
 
}