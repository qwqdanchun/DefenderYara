
rule TrojanDownloader_Win32_Banload_TI{
	meta:
		description = "TrojanDownloader:Win32/Banload.TI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 68 6f 74 65 6c 2e 7a 69 70 } //01 00 
		$a_01_1 = {35 34 35 44 34 35 31 42 34 34 34 35 35 43 35 44 35 35 35 32 35 42 31 32 35 32 35 30 32 32 36 46 32 43 32 41 33 37 32 34 33 35 32 38 33 39 32 34 32 45 33 46 32 32 32 34 32 31 32 36 33 43 33 45 33 37 37 44 32 31 32 36 33 35 33 30 32 44 32 38 37 34 37 34 36 37 32 44 32 42 32 42 30 39 } //01 00 
		$a_01_2 = {ba 02 00 00 00 e8 3a 78 f9 ff 68 b8 0b 00 00 e8 c4 55 f9 ff 8d 4d bc 8b 83 f8 02 00 00 ba 00 18 47 00 e8 59 02 ff ff 8b 45 bc 33 d2 } //00 00 
	condition:
		any of ($a_*)
 
}