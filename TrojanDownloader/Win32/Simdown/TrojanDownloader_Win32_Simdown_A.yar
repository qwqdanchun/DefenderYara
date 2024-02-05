
rule TrojanDownloader_Win32_Simdown_A{
	meta:
		description = "TrojanDownloader:Win32/Simdown.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 6f 70 65 6e 00 00 00 00 ff ff ff ff 0b 00 00 00 2f 72 65 70 6f 72 74 2e 6c 6f 67 00 } //01 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 35 2e 31 34 39 2e 32 34 38 2e 38 35 2f 66 6c 61 73 68 75 70 64 61 74 65 2e 65 78 65 00 } //01 00 
		$a_01_2 = {68 74 74 70 3a 2f 2f 35 2e 31 34 39 2e 32 34 38 2e 38 35 2f 66 6c 61 73 68 73 65 63 2e 65 78 65 00 } //01 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 35 2e 31 34 39 2e 32 34 38 2e 38 35 2f 69 6e 66 6f 2e 74 78 74 00 } //01 00 
		$a_01_4 = {00 2f 66 6c 61 73 68 73 65 63 2e 65 78 65 00 00 00 ff ff ff ff 0d 00 00 00 2f 73 74 61 72 74 73 65 63 2e 76 62 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}