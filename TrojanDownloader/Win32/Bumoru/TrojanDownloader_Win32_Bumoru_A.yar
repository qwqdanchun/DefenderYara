
rule TrojanDownloader_Win32_Bumoru_A{
	meta:
		description = "TrojanDownloader:Win32/Bumoru.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {5c 00 70 00 75 00 62 00 70 00 72 00 6e 00 2e 00 76 00 62 00 73 00 90 02 20 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 90 02 20 20 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 68 00 74 00 74 00 70 00 90 00 } //01 00 
		$a_02_1 = {5c 00 70 00 75 00 62 00 70 00 72 00 6e 00 2e 00 76 00 62 00 73 00 90 02 20 20 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 90 02 20 20 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 68 00 74 00 74 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}