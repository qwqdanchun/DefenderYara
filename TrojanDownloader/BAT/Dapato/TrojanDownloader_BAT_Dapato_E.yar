
rule TrojanDownloader_BAT_Dapato_E{
	meta:
		description = "TrojanDownloader:BAT/Dapato.E,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 4f 00 00 00 20 48 00 00 00 58 fe 0e 0b 00 20 19 01 00 00 fe 0e 15 00 38 90 01 02 00 00 3a 90 01 02 00 00 38 90 01 02 00 00 20 fb 00 00 00 20 53 00 00 00 59 90 00 } //01 00 
		$a_03_1 = {0a 06 03 28 90 01 04 04 28 90 01 04 6f 90 01 05 73 90 01 04 0b 07 17 6f 90 01 05 07 16 6f 90 00 } //01 00 
		$a_00_2 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_00_3 = {73 65 74 5f 4b 65 79 } //01 00  set_Key
		$a_00_4 = {64 6f 77 6e 65 78 65 63 75 74 65 } //01 00  downexecute
		$a_00_5 = {68 00 65 00 6b 00 52 00 66 00 6b 00 4a 00 4d 00 70 00 74 00 33 00 68 00 75 00 53 00 54 00 73 00 38 00 63 00 } //00 00  hekRfkJMpt3huSTs8c
	condition:
		any of ($a_*)
 
}