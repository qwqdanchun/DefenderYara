
rule TrojanDownloader_Win32_Banload_VD{
	meta:
		description = "TrojanDownloader:Win32/Banload.VD,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 14 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {45 78 74 72 61 69 72 5f 44 4c 4c 00 } //05 00 
		$a_01_1 = {45 78 74 72 61 69 72 5f 44 6c 6c 47 72 61 6e 64 65 00 } //05 00 
		$a_01_2 = {45 78 74 72 61 69 72 5f 41 55 54 4f 00 } //05 00 
		$a_01_3 = {45 78 74 72 61 69 72 5f 55 50 44 00 } //05 00 
		$a_01_4 = {43 72 79 70 74 00 } //05 00 
		$a_01_5 = {43 72 69 61 52 65 67 69 73 74 72 6f 00 } //01 00 
		$a_00_6 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2d 00 73 00 } //01 00 
		$a_00_7 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2f 00 73 00 20 00 2f 00 75 00 } //00 00 
	condition:
		any of ($a_*)
 
}