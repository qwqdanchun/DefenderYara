
rule TrojanDownloader_Win32_Banload_BEE{
	meta:
		description = "TrojanDownloader:Win32/Banload.BEE,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 44 50 52 30 30 39 2e 65 78 65 00 } //01 00  䑜剐〰⸹硥e
		$a_01_1 = {5c 54 4e 54 4c 4f 47 2e 64 61 74 00 } //01 00  呜呎佌⹇慤t
		$a_01_2 = {00 43 3a 5c 61 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 53 63 00 } //01 00 
		$a_03_3 = {47 42 20 4e 41 4f 90 01 0a 47 42 20 53 49 4d 90 01 0a 67 62 70 73 76 2e 65 78 65 90 00 } //01 00 
		$a_03_4 = {2f 70 6c 75 67 69 6e 73 2f 73 79 73 74 65 6d 2f 77 65 62 2f 90 02 10 2f 6e 6f 74 69 66 79 2e 70 68 70 90 00 } //01 00 
		$a_01_5 = {69 70 2d 61 70 69 2e 63 6f 6d 2f 6a 73 6f 6e 2f 00 } //00 00 
		$a_00_6 = {78 e3 00 } //00 06 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_BEE_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.BEE,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 03 00 "
		
	strings :
		$a_80_0 = {6e 65 67 79 6d 75 73 6b 65 74 61 73 2e 68 75 2f 72 6f 63 6b 79 2f 6d 6f 64 75 6c 65 73 2f 77 65 62 32 30 31 35 2f 56 4f 4c 56 45 52 49 4e 45 2f 6e 6f 74 69 66 79 2e 70 68 70 00 } //negymusketas.hu/rocky/modules/web2015/VOLVERINE/notify.php  01 00 
		$a_80_1 = {00 53 66 32 2e 64 6c 6c 00 } //  01 00 
		$a_80_2 = {00 73 6e 78 68 6b 2e 64 6c 6c 00 } //  02 00 
		$a_80_3 = {00 43 3a 5c 61 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 53 63 00 } //  02 00 
		$a_80_4 = {00 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 41 73 73 6f 63 69 61 74 69 6f 6e 73 00 } //  02 00 
		$a_02_5 = {00 5c 00 44 00 50 00 52 00 30 00 30 00 90 02 04 2e 00 65 00 78 00 65 00 00 90 00 } //02 00 
		$a_02_6 = {00 5c 44 50 52 30 30 90 02 04 2e 65 78 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}