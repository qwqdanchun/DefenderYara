
rule Ransom_Win32_FRIEDEX_MR_MTB{
	meta:
		description = "Ransom:Win32/FRIEDEX.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 06 00 "
		
	strings :
		$a_02_0 = {28 df 89 84 24 90 01 04 89 94 24 90 01 04 8a 9c 24 90 01 04 66 c7 84 24 90 01 06 8b 44 24 90 01 01 00 fb 88 18 8a 5c 24 90 01 01 80 f3 90 01 01 88 9c 24 90 01 04 8a 5c 24 90 01 01 80 c3 90 01 01 8b 84 24 90 01 04 35 90 01 04 88 9c 24 90 09 09 00 8a 9c 24 90 01 04 b7 90 00 } //01 00 
		$a_00_1 = {30 00 4f 00 63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 6e 00 43 00 68 00 72 00 6f 00 6d 00 65 00 62 00 6f 00 6f 00 6b 00 56 00 50 00 6a 00 61 00 63 00 6b 00 73 00 6f 00 6e 00 6f 00 } //01 00  0OchannelnChromebookVPjacksono
		$a_00_2 = {31 00 35 00 36 00 62 00 61 00 72 00 2e 00 4b 00 61 00 63 00 74 00 69 00 6f 00 6e 00 73 00 66 00 69 00 72 00 73 00 74 00 } //01 00  156bar.Kactionsfirst
		$a_00_3 = {33 34 49 37 76 4b 6e 61 74 69 76 65 6c 79 36 36 77 65 62 68 65 } //01 00  34I7vKnatively66webhe
		$a_00_4 = {7a 6f 69 6e 67 61 74 6f 72 73 4d 4f 6c 37 31 48 59 } //01 00  zoingatorsMOl71HY
		$a_00_5 = {6c 00 31 00 61 00 64 00 76 00 61 00 6e 00 63 00 69 00 6e 00 67 00 35 00 33 00 2e 00 43 00 6f 00 70 00 69 00 65 00 73 00 } //01 00  l1advancing53.Copies
		$a_00_6 = {61 6c 6c 6f 77 49 6e 74 65 72 6e 65 74 74 68 65 73 } //00 00  allowInternetthes
	condition:
		any of ($a_*)
 
}