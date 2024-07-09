
rule TrojanDownloader_Win32_Renos_LN{
	meta:
		description = "TrojanDownloader:Win32/Renos.LN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_03_0 = {53 53 48 4e 41 53 00 [0-04] 42 61 63 6b 75 70 52 65 61 64 57 00 } //1
		$a_00_1 = {3c 69 66 72 61 6d 65 20 66 72 61 6d 65 62 6f 72 64 65 72 3d 22 30 22 20 77 69 64 74 68 3d 22 30 22 20 68 65 69 67 68 74 3d 22 30 22 20 73 72 63 3d 22 00 } //1
		$a_01_2 = {53 53 48 4e 41 53 00 00 42 61 63 6b 75 70 52 65 61 64 57 00 20 00 00 00 68 74 74 70 3a 2f 2f 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 00 00 49 44 00 } //2
		$a_03_3 = {53 53 48 4e 41 53 00 [0-04] 42 65 65 70 31 36 00 } //1
		$a_00_4 = {3c 75 72 6c 20 70 6f 73 74 3d 22 6f 6e 22 3e 68 74 74 70 } //1 <url post="on">http
		$a_01_5 = {53 53 48 4e 41 53 00 00 42 65 65 70 31 36 00 00 20 00 00 00 68 74 74 70 3a 2f 2f 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 00 } //2
		$a_01_6 = {3c 2f 75 72 6c 3e 3c 75 72 6c 20 67 65 74 3d 22 6f 6e 22 3e 68 74 74 70 3a 2f 2f } //1 </url><url get="on">http://
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*2+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1) >=2
 
}