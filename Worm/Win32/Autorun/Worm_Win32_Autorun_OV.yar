
rule Worm_Win32_Autorun_OV{
	meta:
		description = "Worm:Win32/Autorun.OV,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_00_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\
		$a_00_1 = {53 00 68 00 6f 00 77 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //1 ShowSuperHidden
		$a_00_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run\
		$a_02_3 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 90 08 00 02 6f 00 70 00 65 00 6e 00 3d 00 90 02 30 2e 00 65 00 78 00 65 00 90 08 00 02 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 90 02 30 2e 00 65 00 78 00 65 00 90 08 00 02 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 3d 00 31 00 90 08 00 02 73 00 68 00 65 00 6c 00 6c 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 90 02 30 2e 00 65 00 78 00 65 00 90 00 } //5
		$a_03_4 = {6a 04 52 6a 04 6a 00 8d 45 90 01 01 68 90 01 04 50 c7 45 cc 00 00 00 00 ff d7 8b 4d 90 01 01 50 51 e8 90 01 02 ff ff ff d6 8d 4d 90 01 01 ff d3 8b 55 90 01 01 52 e8 90 01 02 ff ff ff d6 68 90 01 04 eb 19 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*5+(#a_03_4  & 1)*1) >=9
 
}