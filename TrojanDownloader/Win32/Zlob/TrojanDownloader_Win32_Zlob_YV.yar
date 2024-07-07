
rule TrojanDownloader_Win32_Zlob_YV{
	meta:
		description = "TrojanDownloader:Win32/Zlob.YV,SIGNATURE_TYPE_PEHSTR,17 00 17 00 05 00 00 "
		
	strings :
		$a_01_0 = {44 34 36 42 45 41 41 34 2d 41 33 30 34 2d 34 30 42 33 2d 41 39 44 41 2d 45 43 37 46 37 46 35 30 31 46 32 35 } //10 D46BEAA4-A304-40B3-A9DA-EC7F7F501F25
		$a_01_1 = {65 00 2e 00 61 00 73 00 70 00 3f 00 4d 00 54 00 3d 00 00 00 70 00 6f 00 6e 00 73 00 } //10
		$a_01_2 = {72 00 65 00 73 00 3a 00 2f 00 2f 00 25 00 73 00 5c 00 73 00 25 00 73 00 25 00 73 00 25 00 73 00 30 00 34 00 2e 00 68 00 74 00 6d 00 } //2 res://%s\s%s%s%s04.htm
		$a_01_3 = {25 00 73 00 73 00 3a 00 2f 00 2f 00 25 00 73 00 5c 00 73 00 68 00 64 00 6f 00 25 00 73 00 25 00 73 00 72 00 72 00 25 00 73 00 25 00 73 00 } //2 %ss://%s\shdo%s%srr%s%s
		$a_01_4 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=23
 
}