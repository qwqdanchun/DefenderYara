
rule TrojanDownloader_Win32_Riprox_A{
	meta:
		description = "TrojanDownloader:Win32/Riprox.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 0b 00 00 "
		
	strings :
		$a_01_0 = {37 00 35 00 33 00 63 00 64 00 61 00 38 00 62 00 30 00 35 00 65 00 33 00 32 00 65 00 66 00 33 00 62 00 38 00 32 00 65 00 30 00 66 00 66 00 39 00 34 00 37 00 61 00 34 00 61 00 39 00 33 00 36 00 00 00 } //1
		$a_01_1 = {34 00 33 00 38 00 64 00 62 00 65 00 34 00 34 00 64 00 65 00 31 00 37 00 63 00 66 00 39 00 37 00 64 00 32 00 37 00 64 00 64 00 36 00 36 00 62 00 61 00 30 00 30 00 37 00 61 00 39 00 65 00 64 00 00 00 } //1
		$a_01_2 = {73 00 65 00 74 00 52 00 65 00 71 00 75 00 65 00 73 00 74 00 48 00 65 00 61 00 64 00 65 00 72 00 00 00 } //1
		$a_01_3 = {72 00 75 00 6e 00 2e 00 70 00 68 00 70 00 00 00 } //1
		$a_01_4 = {75 00 73 00 65 00 72 00 61 00 6e 00 64 00 70 00 63 00 3d 00 00 00 } //1
		$a_01_5 = {26 00 61 00 64 00 6d 00 69 00 6e 00 3d 00 00 00 } //1
		$a_01_6 = {26 00 69 00 64 00 3d 00 00 00 } //1
		$a_01_7 = {44 00 4c 00 7c 00 00 00 } //1
		$a_01_8 = {55 00 50 00 7c 00 00 00 } //1
		$a_01_9 = {56 00 56 00 7c 00 00 00 } //1
		$a_01_10 = {56 00 49 00 7c 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=9
 
}