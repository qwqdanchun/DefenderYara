
rule TrojanDownloader_Win32_Zlob_gen_BU{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!BU,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 00 00 00 55 52 4c 00 65 72 6d 73 7d 00 00 00 68 54 00 00 3d 7b 73 65 61 72 63 00 3d 25 64 26 71 00 00 00 3d 31 26 74 00 00 00 00 70 3f 62 00 } //1
		$a_01_1 = {2d 33 00 00 7b 31 46 42 41 00 00 00 45 78 65 63 00 00 00 00 68 70 00 00 63 74 2e 70 00 00 00 00 } //1
		$a_01_2 = {2e 61 64 76 00 00 00 00 70 3a 2f 2f 77 77 77 00 4d 65 6e 75 54 65 78 74 00 00 00 00 70 79 77 61 72 65 00 00 6e 74 69 2d 53 00 00 00 49 45 20 41 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}