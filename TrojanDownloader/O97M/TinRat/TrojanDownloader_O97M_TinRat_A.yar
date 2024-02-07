
rule TrojanDownloader_O97M_TinRat_A{
	meta:
		description = "TrojanDownloader:O97M/TinRat.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {49 66 20 28 49 6e 53 74 72 28 31 2c 20 72 67 2c 20 22 5b 50 52 4f 54 45 43 54 45 44 20 43 4f 4e 54 45 4e 54 90 02 01 5d 22 29 20 3e 20 30 29 20 54 68 65 6e 90 00 } //01 00 
		$a_00_1 = {70 6f 73 20 3d 20 43 49 6e 74 28 28 52 6e 64 20 2a 20 63 6e 74 29 20 2b 20 31 29 0d 0a 20 20 20 20 20 20 20 20 20 20 20 20 6c 73 74 72 20 3d 20 6c 73 74 72 20 26 20 4d 69 64 28 74 70 6c 2c 20 70 6f 73 2c 20 31 29 } //01 00 
		$a_00_2 = {49 66 20 28 73 68 64 2e 4e 61 6d 65 20 3d 20 22 53 68 30 30 30 30 30 31 22 29 20 54 68 65 6e } //01 00  If (shd.Name = "Sh000001") Then
		$a_00_3 = {54 42 6f 78 2e 54 65 78 74 20 3d 20 22 55 53 20 53 45 43 20 55 6e 6c 6f 63 6b 20 64 6f 63 75 6d 65 6e 74 20 73 65 72 76 69 63 65 } //00 00  TBox.Text = "US SEC Unlock document service
	condition:
		any of ($a_*)
 
}