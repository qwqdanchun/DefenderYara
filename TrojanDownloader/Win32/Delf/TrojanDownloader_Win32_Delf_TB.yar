
rule TrojanDownloader_Win32_Delf_TB{
	meta:
		description = "TrojanDownloader:Win32/Delf.TB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 3a 5c 6d 70 72 66 31 30 31 2e 69 6e 69 } //01 00  c:\mprf101.ini
		$a_00_1 = {6d 70 5f 66 69 6c 65 64 6f 77 6e 66 31 2e 70 68 70 3f 73 6e 3d } //01 00  mp_filedownf1.php?sn=
		$a_02_2 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 44 69 72 65 63 74 58 5c 62 69 6e 5c 76 90 01 02 5c 64 69 72 65 63 74 78 90 01 02 2e 65 78 65 90 00 } //01 00 
		$a_02_3 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 47 52 45 54 45 43 48 5c 45 6e 67 69 6e 65 5c 76 90 01 02 5c 67 72 65 74 65 63 68 90 01 02 2e 65 78 65 90 00 } //01 00 
		$a_02_4 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 6c 5c 76 90 01 02 5c 65 6e 67 69 6e 65 2e 65 78 65 20 2f 69 6e 73 74 61 6c 6c 20 2f 73 69 6c 65 6e 74 90 00 } //01 00 
		$a_00_5 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //00 00  Software\Borland\Delphi
	condition:
		any of ($a_*)
 
}