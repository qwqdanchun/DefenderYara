
rule TrojanDownloader_O97M_Obfuse_AB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.AB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //01 00  Sub autoopen()
		$a_01_1 = {2e 43 72 65 61 74 65 46 6f 6c 64 65 72 20 22 63 3a 5c 31 22 } //01 00  .CreateFolder "c:\1"
		$a_01_2 = {42 65 6e 61 6a 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 63 3a 5c 31 5c 53 49 4e 47 41 50 4f 55 52 2e 63 6d 64 22 } //01 00  Benaj.CreateTextFile("c:\1\SINGAPOUR.cmd"
		$a_01_3 = {42 65 6e 61 6a 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 63 3a 5c 31 5c 46 52 41 4e 43 45 2e 63 6d 64 22 } //01 00  Benaj.CreateTextFile("c:\1\FRANCE.cmd"
		$a_01_4 = {41 72 63 68 69 74 65 63 74 75 72 65 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 62 72 65 61 6b 3e 25 46 6f 6c 64 65 72 56 42 53 25 22 29 } //01 00  Architecture.WriteLine ("break>%FolderVBS%")
		$a_01_5 = {28 22 73 74 61 72 74 20 63 3a 5c 31 5c 57 6f 6d 61 6e 4c 6f 76 65 2e 65 78 65 22 29 } //00 00  ("start c:\1\WomanLove.exe")
	condition:
		any of ($a_*)
 
}