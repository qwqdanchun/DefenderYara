
rule TrojanDownloader_BAT_Banload_AU_bit{
	meta:
		description = "TrojanDownloader:BAT/Banload.AU!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6a 00 6d 00 78 00 73 00 61 00 63 00 61 00 62 00 61 00 6d 00 65 00 6e 00 74 00 6f 00 73 00 67 00 72 00 61 00 66 00 69 00 63 00 6f 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 90 02 40 2e 00 7a 00 69 00 70 00 90 00 } //01 00 
		$a_01_1 = {2f 00 70 00 6f 00 73 00 74 00 2e 00 70 00 68 00 70 00 3f 00 73 00 65 00 6c 00 3d 00 } //01 00  /post.php?sel=
		$a_01_2 = {28 00 3f 00 3c 00 3d 00 3c 00 43 00 6f 00 75 00 6e 00 74 00 72 00 79 00 43 00 6f 00 64 00 65 00 3e 00 29 00 2e 00 2b 00 28 00 3f 00 3d 00 3c 00 2f 00 43 00 6f 00 75 00 6e 00 74 00 72 00 79 00 43 00 6f 00 64 00 65 00 3e 00 29 00 } //01 00  (?<=<CountryCode>).+(?=</CountryCode>)
		$a_01_3 = {70 00 74 00 2d 00 42 00 52 00 } //01 00  pt-BR
		$a_01_4 = {53 00 65 00 72 00 76 00 65 00 72 00 } //01 00  Server
		$a_01_5 = {5c 00 6d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 69 00 6e 00 69 00 } //00 00  \msconfig.ini
	condition:
		any of ($a_*)
 
}