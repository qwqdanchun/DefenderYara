
rule TrojanDownloader_Win32_VB_OC{
	meta:
		description = "TrojanDownloader:Win32/VB.OC,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 31 31 35 36 2e 6e 65 74 2f 6d 6d 2f 74 78 74 2e 74 78 74 } //01 00  11156.net/mm/txt.txt
		$a_01_1 = {31 31 31 35 36 2e 6e 65 74 2f 2f 74 6f 6e 67 6a 69 2f 63 6f 75 6e 74 2e 61 73 70 } //01 00  11156.net//tongji/count.asp
		$a_01_2 = {5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 20 00 33 00 33 00 33 00 35 00 38 00 2e 00 6e 00 65 00 74 00 } //01 00  \Internet Explorer\IEXPLORE.EXE 33358.net
		$a_01_3 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 33 00 36 00 30 00 2e 00 65 00 78 00 65 00 } //01 00  \Program Files\360.exe
		$a_01_4 = {2f 00 2f 00 78 00 75 00 34 00 2e 00 6e 00 65 00 74 00 3f 00 } //00 00  //xu4.net?
	condition:
		any of ($a_*)
 
}