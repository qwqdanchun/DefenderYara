
rule Trojan_Win32_FormBook_AF_MTB{
	meta:
		description = "Trojan:Win32/FormBook.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 55 10 6a 00 8d 4d fc 51 53 8b f0 56 52 ff 15 90 01 04 80 04 3e f1 47 3b fb 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 46 69 6c 65 57 } //00 00  CreateFileW
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FormBook_AF_MTB_2{
	meta:
		description = "Trojan:Win32/FormBook.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {56 00 37 00 78 00 6f 00 51 00 38 00 65 00 69 00 77 00 64 00 57 00 79 00 52 00 38 00 46 00 65 00 74 00 44 00 72 00 6c 00 38 00 57 00 56 00 55 00 7a 00 70 00 6d 00 6a 00 76 00 37 00 35 00 } //02 00  V7xoQ8eiwdWyR8FetDrl8WVUzpmjv75
		$a_01_1 = {68 00 61 00 46 00 30 00 64 00 55 00 34 00 6a 00 35 00 39 00 59 00 54 00 7a 00 63 00 41 00 33 00 6d 00 67 00 69 00 71 00 38 00 46 00 68 00 64 00 4a 00 37 00 6d 00 4f 00 45 00 76 00 34 00 72 00 49 00 43 00 35 00 33 00 } //01 00  haF0dU4j59YTzcA3mgiq8FhdJ7mOEv4rIC53
		$a_00_2 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_3 = {59 00 70 00 58 00 6f 00 4a 00 31 00 34 00 30 00 38 00 35 00 38 00 31 00 36 00 36 00 38 00 } //01 00  YpXoJ1408581668
		$a_01_4 = {61 00 57 00 58 00 4c 00 54 00 31 00 30 00 30 00 32 00 38 00 32 00 32 00 38 00 39 00 35 00 } //01 00  aWXLT1002822895
		$a_01_5 = {77 00 7a 00 49 00 65 00 33 00 31 00 31 00 36 00 30 00 34 00 36 00 33 00 34 00 30 00 37 00 } //01 00  wzIe31160463407
		$a_01_6 = {65 00 62 00 4d 00 55 00 65 00 32 00 30 00 33 00 38 00 39 00 33 00 35 00 37 00 38 00 35 00 } //00 00  ebMUe2038935785
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FormBook_AF_MTB_3{
	meta:
		description = "Trojan:Win32/FormBook.AF!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {55 8b ec 83 ec 18 c7 45 fc 00 00 00 00 c7 45 e8 00 00 00 00 6a 04 68 00 30 00 00 68 00 09 3d 00 } //05 00 
		$a_01_1 = {83 7d 0c 00 74 1a 8b 4d fc c6 01 00 8b 55 fc 83 c2 01 89 55 fc 8b 45 0c 83 e8 01 89 45 0c eb e0 } //00 00 
	condition:
		any of ($a_*)
 
}