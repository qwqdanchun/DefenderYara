
rule TrojanDownloader_Win32_Banload_AMW{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 37 48 71 53 33 65 6c 42 } //01 00  Q7HqS3elB
		$a_01_1 = {4a 4d 62 5a 53 63 7a 70 52 73 50 71 38 34 7a 63 50 63 62 5a 50 47 } //01 00  JMbZSczpRsPq84zcPcbZPG
		$a_01_2 = {7c 65 8b 45 f0 c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 48 83 ef 08 8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 f0 5a 8b ca 99 f7 f9 89 55 f0 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_AMW_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMW,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {6a 00 e8 1d 73 fd ff 6a 01 8d 45 f4 b9 ec d2 44 00 8b 93 f8 02 00 00 e8 14 70 fb ff 8b 45 f4 e8 c0 71 fb ff 50 e8 b2 8e fb ff } //05 00 
		$a_03_1 = {47 00 8d 45 fc ba 90 01 01 00 00 00 e8 90 01 01 ac f8 ff 8b 55 fc b8 90 01 01 96 47 00 e8 90 01 01 fe ff ff 90 09 26 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 68 90 01 01 96 47 00 90 00 } //05 00 
		$a_03_2 = {8d 45 fc ba 09 00 00 00 e8 90 01 02 fa ff 8b 4d fc ba 90 01 03 00 8b c3 e8 90 01 01 fe ff ff 90 09 28 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 68 90 01 02 90 03 01 01 45 46 00 90 00 } //01 00 
		$a_01_3 = {55 61 63 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 } //01 00  UacDisableNotify
		$a_01_4 = {53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 } //01 00  Security Center
		$a_01_5 = {45 72 72 6f 20 61 6f 20 61 62 72 69 72 20 6f 20 61 72 71 75 69 76 6f } //00 00  Erro ao abrir o arquivo
		$a_00_6 = {80 10 00 } //00 bd 
	condition:
		any of ($a_*)
 
}