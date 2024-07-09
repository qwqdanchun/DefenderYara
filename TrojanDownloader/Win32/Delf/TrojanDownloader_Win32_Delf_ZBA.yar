
rule TrojanDownloader_Win32_Delf_ZBA{
	meta:
		description = "TrojanDownloader:Win32/Delf.ZBA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {8a 45 ff 8b e5 5d c3 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 43 6f 6e 74 65 6e 74 20 53 65 72 76 69 63 65 00 55 8b ec 33 c9 51 51 51 } //1
		$a_00_1 = {6c 6f 67 2e 64 61 74 00 ff ff ff ff 01 00 00 00 40 00 00 00 ff ff ff ff 17 00 00 00 6d 65 75 73 63 6f 6e 74 61 74 6f 73 2e 66 69 7a 77 69 67 2e 63 6f 6d 00 ff ff ff ff 0c 00 00 00 6d 65 75 73 63 6f 6e 74 61 74 6f 73 00 00 00 00 ff ff ff ff 06 00 00 00 6c 65 67 69 61 6f 00 00 ff ff ff ff 04 00 00 00 2e 74 78 74 00 00 00 00 55 8b ec 33 } //1
		$a_00_2 = {45 00 00 00 ff ff ff ff 5e 00 00 00 68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d 2f 64 6f 77 6e 6c 6f 61 64 2f 42 2f 30 2f 31 2f 42 30 31 38 31 31 41 46 2d 38 33 44 31 2d 34 38 34 41 2d 38 36 36 42 2d 41 45 34 31 34 41 39 34 38 42 35 46 2f 6d 6d } //1
		$a_02_3 = {68 74 74 70 3a 2f 2f 73 73 ?? 2e 62 79 65 74 68 6f 73 74 31 33 2e 63 6f 6d 2f 43 6f 6e 66 69 67 75 72 61 63 6f 65 73 2e 69 6e 69 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}