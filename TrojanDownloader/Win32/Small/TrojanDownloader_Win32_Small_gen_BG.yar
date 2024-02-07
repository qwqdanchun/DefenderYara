
rule TrojanDownloader_Win32_Small_gen_BG{
	meta:
		description = "TrojanDownloader:Win32/Small.gen!BG,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0c 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c } //0a 00  SYSTEM\CurrentControlSet\Services\
		$a_02_1 = {2e 65 78 65 00 90 09 02 00 00 90 05 02 03 30 2d 39 90 02 90 20 2f 63 20 20 64 65 6c 20 90 00 } //01 00 
		$a_02_2 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 30 2e 65 78 65 90 00 } //01 00 
		$a_02_3 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 31 2e 65 78 65 90 00 } //01 00 
		$a_02_4 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 32 2e 65 78 65 90 00 } //01 00 
		$a_02_5 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 33 2e 65 78 65 90 00 } //01 00 
		$a_02_6 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 34 2e 65 78 65 90 00 } //01 00 
		$a_02_7 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 35 2e 65 78 65 90 00 } //01 00 
		$a_02_8 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 36 2e 65 78 65 90 00 } //01 00 
		$a_02_9 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 37 2e 65 78 65 90 00 } //01 00 
		$a_02_10 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 38 2e 65 78 65 90 00 } //01 00 
		$a_02_11 = {68 74 74 70 3a 2f 2f 90 02 30 2f 90 05 02 06 61 2d 7a 41 2d 5a 2f 39 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}