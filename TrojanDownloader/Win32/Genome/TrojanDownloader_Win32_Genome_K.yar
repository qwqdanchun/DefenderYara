
rule TrojanDownloader_Win32_Genome_K{
	meta:
		description = "TrojanDownloader:Win32/Genome.K,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {30 00 00 00 8b 90 01 01 0c 8b 90 01 01 1c 8b 90 01 01 08 8b 90 01 01 20 8b 90 01 01 38 90 01 01 18 75 f3 80 90 01 01 6b 74 07 80 90 01 01 4b 74 02 eb e7 90 00 } //01 00 
		$a_01_1 = {58 30 10 50 } //01 00  じ倐
		$a_01_2 = {8b 53 24 03 d0 66 8b 0c 4a 8b 53 1c 03 d0 8b 1c 8a 03 c3 } //00 00 
	condition:
		any of ($a_*)
 
}