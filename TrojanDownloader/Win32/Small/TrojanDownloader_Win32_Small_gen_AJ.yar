
rule TrojanDownloader_Win32_Small_gen_AJ{
	meta:
		description = "TrojanDownloader:Win32/Small.gen!AJ,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 08 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 62 65 73 74 62 73 64 2e 69 6e 66 6f 2f 63 64 2f 63 64 2e 70 68 70 3f 69 64 3d 45 52 52 4f 52 26 76 65 72 3d 69 67 31 } //02 00 
		$a_01_1 = {46 69 6e 64 4e 65 78 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 41 00 00 7b 00 49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 00 77 69 6e 69 6e 65 74 2e 64 6c 6c 00 31 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 00 75 72 6c 6d 6f 6e 2e 64 6c 6c } //03 00 
		$a_01_2 = {68 74 74 70 3a 2f 2f 62 65 73 74 62 73 64 2e 69 6e 66 6f 2f 63 64 2f 63 64 2e 70 68 70 3f 69 64 3d 25 73 26 76 65 72 3d 69 67 31 00 68 74 74 70 3a 2f 2f 72 65 7a 75 6c 74 73 64 2e 69 6e 66 6f 2f 63 64 2f 63 64 2e 70 68 70 3f 69 64 3d 25 73 26 76 65 72 3d 69 67 31 00 68 74 74 70 3a 2f 2f 63 61 72 72 65 6e 74 61 6c 68 65 6c 70 2e 6f 72 67 2f 63 64 2f 63 64 2e 70 68 70 3f 69 64 3d 25 73 26 76 65 72 3d 69 67 31 00 52 45 47 5f 53 5a 00 43 4c 53 49 44 00 } //03 00 
		$a_01_3 = {25 6c 75 2e 65 78 65 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 00 69 64 73 74 72 66 00 45 52 52 4f 52 00 25 6c 64 2d 25 6c 58 25 6c 58 00 43 4c 53 49 44 5c 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}