
rule TrojanDownloader_Win32_Lidared_B{
	meta:
		description = "TrojanDownloader:Win32/Lidared.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 00 74 00 6f 00 6e 00 67 00 6a 00 69 00 2e 00 70 00 68 00 70 00 3f 00 75 00 73 00 65 00 72 00 69 00 64 00 3d 00 25 00 73 00 26 00 6d 00 61 00 63 00 3d 00 25 00 73 00 26 00 69 00 64 00 64 00 64 00 3d 00 25 00 73 00 26 00 6b 00 65 00 79 00 3d 00 25 00 73 00 26 00 61 00 3d 00 25 00 73 00 } //2 /tongji.php?userid=%s&mac=%s&iddd=%s&key=%s&a=%s
		$a_01_1 = {30 00 30 00 36 00 63 00 7a 00 53 00 54 00 4b 00 6a 00 77 00 31 00 65 00 76 00 6c 00 7a 00 7a 00 68 00 64 00 6f 00 32 00 77 00 67 00 33 00 30 00 38 00 35 00 30 00 36 00 34 00 65 00 38 00 33 00 2e 00 67 00 69 00 66 00 } //2 006czSTKjw1evlzzhdo2wg3085064e83.gif
		$a_01_2 = {70 00 61 00 70 00 61 00 2d 00 73 00 61 00 6d 00 2e 00 65 00 78 00 65 00 } //1 papa-sam.exe
		$a_01_3 = {4c 00 61 00 73 00 74 00 42 00 6f 00 6f 00 74 00 55 00 70 00 54 00 69 00 6d 00 65 00 } //1 LastBootUpTime
		$a_01_4 = {6e 00 6f 00 74 00 69 00 6e 00 67 00 } //1 noting
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}