
rule Trojan_BAT_CoinMiner_RDF_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.RDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 69 70 31 32 32 31 33 37 37 38 34 34 32 32 33 32 38 34 37 36 36 34 } //01 00  sip12213778442232847664
		$a_01_1 = {2d 00 77 00 68 00 61 00 74 00 74 00 } //01 00  -whatt
		$a_01_2 = {2d 00 65 00 78 00 74 00 64 00 75 00 6d 00 6d 00 74 00 } //01 00  -extdummt
		$a_01_3 = {4a 00 47 00 78 00 76 00 5a 00 32 00 38 00 67 00 50 00 53 00 41 00 6e 00 4c 00 6c 00 39 00 66 00 49 00 43 00 41 00 67 00 58 00 31 00 38 00 75 00 49 00 43 00 42 00 66 00 58 00 31 00 39 00 66 00 58 00 31 00 39 00 66 00 58 00 31 00 39 00 66 00 49 00 43 00 41 00 67 00 58 00 31 00 39 00 66 00 49 00 43 00 35 00 66 00 58 00 31 00 39 00 66 00 58 00 31 00 39 00 66 00 58 00 31 00 39 00 66 00 58 00 79 00 34 00 67 00 58 00 31 00 39 00 66 00 58 00 31 00 39 00 66 00 58 00 79 00 41 00 67 00 58 00 31 00 38 00 4e 00 43 00 6e 00 77 00 67 00 49 00 46 00 77 00 67 00 66 00 43 00 41 00 67 00 66 00 43 00 42 00 38 00 49 00 43 00 41 00 } //01 00  JGxvZ28gPSAnLl9fICAgX18uICBfX19fX19fX19fICAgX19fIC5fX19fX19fX19fXy4gX19fX19fXyAgX18NCnwgIFwgfCAgfCB8ICA
		$a_01_4 = {47 65 74 46 69 6c 65 54 79 70 65 } //01 00  GetFileType
		$a_01_5 = {47 65 74 53 74 64 48 61 6e 64 6c 65 } //01 00  GetStdHandle
		$a_01_6 = {57 72 69 74 65 43 6f 6e 73 6f 6c 65 4f 75 74 70 75 74 57 } //00 00  WriteConsoleOutputW
	condition:
		any of ($a_*)
 
}