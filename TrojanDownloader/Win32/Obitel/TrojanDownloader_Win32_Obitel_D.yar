
rule TrojanDownloader_Win32_Obitel_D{
	meta:
		description = "TrojanDownloader:Win32/Obitel.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 61 00 62 00 69 00 72 00 61 00 2e 00 6e 00 65 00 74 00 2f 00 74 00 72 00 61 00 66 00 66 00 2f 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 26 00 76 00 65 00 72 00 3d 00 38 00 26 00 75 00 69 00 64 00 3d 00 } //1 http://mabira.net/traff/controller.php?&ver=8&uid=
		$a_00_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 00 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 00 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1
		$a_01_2 = {e8 52 0c 00 00 85 c0 74 28 8d 94 24 24 01 00 00 68 0c 83 41 00 52 e8 ec 1d 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}