
rule TrojanDownloader_Win32_Renos_BAI{
	meta:
		description = "TrojanDownloader:Win32/Renos.BAI,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 06 00 "
		
	strings :
		$a_03_0 = {ba 7f 96 98 00 eb 0a 46 56 83 c6 10 58 48 8b f0 4a 0b d2 75 f2 90 09 1a 00 55 8b ec 83 c4 90 01 01 80 3d 90 01 02 00 10 00 0f 85 3a 01 00 00 c6 05 90 01 02 00 10 01 90 00 } //04 00 
		$a_03_1 = {81 c4 18 fe ff ff 90 90 90 90 90 90 83 3d 90 01 02 00 10 48 75 11 e8 90 01 02 ff ff c7 05 90 01 02 00 10 00 00 00 00 eb 06 90 00 } //01 00 
		$a_00_2 = {6d 69 6c 69 74 61 72 79 61 73 73 2e 63 6f 6d 2f } //01 00  militaryass.com/
		$a_01_3 = {54 20 68 20 65 20 63 6f 6d 70 75 74 65 72 20 68 61 73 20 62 65 65 6e 20 63 72 75 73 68 65 64 21 21 } //01 00  T h e computer has been crushed!!
		$a_02_4 = {25 73 3f 70 61 72 74 6e 65 72 3d 25 73 90 09 07 00 68 74 74 70 3a 2f 2f 90 00 } //01 00 
		$a_02_5 = {25 73 2f 73 79 6e 63 2e 70 68 70 90 09 07 00 68 74 74 70 3a 2f 2f 90 00 } //05 00 
		$a_03_6 = {68 7f 96 98 00 58 eb 0a 46 56 83 c6 10 5a 4a 8b f0 48 0b d2 75 f2 6a 38 68 90 01 02 40 00 e8 90 01 01 fe ff ff 6a 39 68 90 01 02 40 00 e8 90 01 01 fe ff ff 90 00 } //02 00 
		$a_00_7 = {69 6e 73 74 61 6c 6c 20 47 69 67 61 41 6e 74 69 56 69 72 75 73 } //00 00  install GigaAntiVirus
	condition:
		any of ($a_*)
 
}