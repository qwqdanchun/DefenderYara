
rule TrojanDownloader_BAT_Telerag_A_bit{
	meta:
		description = "TrojanDownloader:BAT/Telerag.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 74 00 65 00 6c 00 65 00 67 00 72 00 61 00 2e 00 70 00 68 00 2f 00 } //01 00  https://telegra.ph/
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {5c 43 6f 4c 6f 61 64 65 72 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 43 6f 4c 6f 61 64 65 72 2e 70 64 62 } //00 00  \CoLoader\obj\Release\CoLoader.pdb
	condition:
		any of ($a_*)
 
}