
rule TrojanDownloader_Win32_Banload_ZFL_bit{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZFL!bit,SIGNATURE_TYPE_PEHSTR_EXT,7a 00 7a 00 06 00 00 64 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //0a 00  Software\Borland\Delphi\Locales
		$a_03_1 = {62 61 74 65 72 69 61 73 74 69 74 75 6c 61 72 90 02 20 63 6f 6d 90 02 20 62 72 90 00 } //0a 00 
		$a_03_2 = {6d 6f 64 65 72 6e 2d 63 6f 6c 6c 65 67 65 90 02 20 61 6d 69 77 6f 72 6b 73 90 00 } //01 00 
		$a_01_3 = {46 6c 69 6f 6e 31 32 33 } //01 00  Flion123
		$a_01_4 = {4a 55 4a 55 42 41 30 33 } //02 00  JUJUBA03
		$a_03_5 = {8d 45 d0 e8 90 01 03 ff ff 75 d0 8d 45 cc e8 90 01 03 ff ff 75 cc 8d 45 c8 e8 90 01 03 ff ff 75 c8 8d 45 f8 ba 0c 00 00 00 e8 90 01 03 ff 8b 45 f8 8d 55 fc e8 90 01 03 ff 8b 55 fc 8b c6 e8 90 01 03 ff b8 90 01 03 00 ba 90 01 03 00 e8 90 01 03 ff 90 00 } //00 00 
		$a_00_6 = {5d 04 00 00 b6 aa 03 80 5c 24 00 00 b7 aa 03 80 00 00 01 00 03 00 0e 00 a0 21 5a 62 6f 74 2e 47 4f 57 21 62 69 74 00 00 01 40 05 82 34 00 04 00 78 f7 00 00 20 00 20 00 06 00 00 0a 00 20 03 d1 e8 35 20 83 b8 ed eb 02 d1 e8 49 75 ee 89 04 b5 90 01 03 00 46 81 fe 00 01 00 00 72 d9 90 00 0a 00 19 01 8b 46 3c 8b 7c 30 78 03 fe 39 6f 18 76 } //27 8b 
	condition:
		any of ($a_*)
 
}