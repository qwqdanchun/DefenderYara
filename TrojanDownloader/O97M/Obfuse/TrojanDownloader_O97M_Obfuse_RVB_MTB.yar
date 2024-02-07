
rule TrojanDownloader_O97M_Obfuse_RVB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 4c 69 73 74 42 6f 78 31 2e 4c 69 73 74 28 34 29 29 2e 52 75 6e 20 22 22 20 26 20 28 90 02 14 20 2b 20 22 33 32 20 22 20 26 20 22 43 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 00 } //01 00 
		$a_00_1 = {4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 22 20 26 20 4c 69 73 74 42 6f 78 31 2e 4c 69 73 74 28 33 29 2c 20 46 61 6c 73 65 } //01 00  Open "GET", "http://" & ListBox1.List(3), False
		$a_00_2 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00  ListBox1.AddItem ("WScript.Shell")
		$a_02_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 90 02 05 22 90 00 } //01 00 
		$a_02_4 = {73 74 61 74 75 73 2e 90 02 05 2f 70 68 30 74 30 2e 6a 70 67 90 00 } //01 00 
		$a_00_5 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 22 41 44 4f 44 42 2e 53 74 72 65 61 6d 22 29 } //00 00  ListBox1.AddItem ("ADODB.Stream")
	condition:
		any of ($a_*)
 
}