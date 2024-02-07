
rule TrojanDownloader_BAT_Cryflas_B{
	meta:
		description = "TrojanDownloader:BAT/Cryflas.B,SIGNATURE_TYPE_PEHSTR_EXT,19 00 18 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {62 00 75 00 72 00 63 00 75 00 65 00 73 00 6d 00 65 00 72 00 73 00 6f 00 79 00 2e 00 6f 00 72 00 67 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 74 00 78 00 74 00 } //0a 00  burcuesmersoy.org/download.txt
		$a_01_1 = {62 00 75 00 72 00 63 00 75 00 65 00 73 00 6d 00 65 00 72 00 73 00 6f 00 79 00 2e 00 6f 00 72 00 67 00 2f 00 69 00 6e 00 64 00 69 00 72 00 2e 00 74 00 78 00 74 00 } //04 00  burcuesmersoy.org/indir.txt
		$a_01_2 = {66 6c 61 73 68 70 6c 61 79 65 72 5f 4c 6f 61 64 00 74 69 6d 65 72 5f 32 5f 54 69 63 6b } //01 00 
		$a_01_3 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 73 00 72 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  C:\Windows\csrss.exe
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  Windows\svchost.exe
		$a_00_5 = {87 10 00 00 5c cb ed 09 e1 86 15 ea 51 e7 29 fc 30 a1 00 00 } //87 10 
	condition:
		any of ($a_*)
 
}