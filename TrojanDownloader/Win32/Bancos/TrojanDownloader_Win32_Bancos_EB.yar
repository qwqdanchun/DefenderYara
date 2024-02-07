
rule TrojanDownloader_Win32_Bancos_EB{
	meta:
		description = "TrojanDownloader:Win32/Bancos.EB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 74 72 4f 72 69 65 6e 74 65 00 00 55 52 4c 00 6f 75 74 46 69 6c 65 00 49 6e 70 75 74 42 75 66 66 65 72 } //01 00 
		$a_01_1 = {73 74 72 6b 61 73 70 65 72 00 00 00 55 52 4c 00 6f 75 74 46 69 6c 65 00 49 6e 70 75 74 42 75 66 66 65 72 } //01 00 
		$a_01_2 = {73 74 72 47 74 65 63 00 55 52 4c 00 6f 75 74 46 69 6c 65 00 49 6e 70 75 74 42 75 66 66 65 72 } //01 00 
		$a_01_3 = {73 74 72 73 69 6d 70 6c 65 73 00 00 55 52 4c 00 6f 75 74 46 69 6c 65 00 49 6e 70 75 74 42 75 66 66 65 72 } //01 00 
		$a_01_4 = {73 74 72 4e 65 72 76 6f 73 6f 00 00 55 52 4c 00 6f 75 74 46 69 6c 65 00 49 6e 70 75 74 42 75 66 66 65 72 } //01 00 
		$a_01_5 = {5c 00 6b 00 61 00 73 00 70 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //01 00  \kasper.vbp
		$a_01_6 = {5c 00 6f 00 72 00 69 00 65 00 6e 00 74 00 65 00 2e 00 76 00 62 00 70 00 } //01 00  \oriente.vbp
		$a_01_7 = {5c 00 64 00 6f 00 77 00 6e 00 6c 00 2e 00 76 00 62 00 70 00 } //01 00  \downl.vbp
		$a_01_8 = {32 00 45 00 36 00 41 00 37 00 30 00 36 00 37 00 } //01 00  2E6A7067
		$a_01_9 = {32 00 45 00 36 00 37 00 36 00 39 00 36 00 36 00 } //01 00  2E676966
		$a_01_10 = {32 00 45 00 36 00 35 00 37 00 38 00 36 00 35 00 } //01 00  2E657865
		$a_01_11 = {32 00 45 00 37 00 33 00 36 00 33 00 37 00 32 00 } //01 00  2E736372
		$a_01_12 = {37 00 39 00 37 00 33 00 37 00 34 00 36 00 35 00 36 00 44 00 } //01 00  797374656D
		$a_01_13 = {36 00 39 00 36 00 45 00 36 00 34 00 36 00 46 00 37 00 37 00 37 00 33 00 } //00 00  696E646F7773
	condition:
		any of ($a_*)
 
}