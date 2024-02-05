
rule TrojanDownloader_Win32_Genome_A{
	meta:
		description = "TrojanDownloader:Win32/Genome.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a ff 6a 00 e8 90 01 04 85 c0 74 49 e8 90 01 04 3d b7 00 00 00 75 23 6a 00 6a 00 68 90 01 04 68 90 01 04 6a 00 e8 90 01 04 6a 05 68 90 01 04 e8 90 01 04 eb 1a 90 00 } //01 00 
		$a_00_1 = {77 61 6e 67 79 6f 75 2e 32 32 38 38 2e 6f 72 67 } //00 00 
	condition:
		any of ($a_*)
 
}