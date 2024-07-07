
rule Trojan_Win32_Sirefef_BE{
	meta:
		description = "Trojan:Win32/Sirefef.BE,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {00 00 45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 61 00 64 00 30 00 35 00 35 00 37 00 35 00 2d 00 38 00 38 00 35 00 37 00 2d 00 34 00 38 00 35 00 30 00 2d 00 39 00 32 00 37 00 37 00 2d 00 31 00 31 00 62 00 38 00 35 00 62 00 64 00 62 00 38 00 65 00 30 00 39 00 7d 00 00 00 } //1
		$a_03_1 = {ff 70 54 ff 75 08 ff 75 0c ff 55 18 8b 45 90 01 01 8b 4d 0c 2b 48 34 89 4d 90 01 01 83 65 90 01 01 00 eb 07 90 00 } //1
		$a_01_2 = {b8 31 c0 00 00 66 89 03 b8 6a 01 00 00 66 89 43 02 c6 43 04 68 83 4b 05 ff 66 c7 43 09 50 50 66 c7 43 0b 50 50 c6 43 0d e8 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
rule Trojan_Win32_Sirefef_BE_2{
	meta:
		description = "Trojan:Win32/Sirefef.BE,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {00 00 45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 61 00 64 00 30 00 35 00 35 00 37 00 35 00 2d 00 38 00 38 00 35 00 37 00 2d 00 34 00 38 00 35 00 30 00 2d 00 39 00 32 00 37 00 37 00 2d 00 31 00 31 00 62 00 38 00 35 00 62 00 64 00 62 00 38 00 65 00 30 00 39 00 7d 00 00 00 } //1
		$a_03_1 = {ff 70 54 ff 75 08 ff 75 0c ff 55 18 8b 45 90 01 01 8b 4d 0c 2b 48 34 89 4d 90 01 01 83 65 90 01 01 00 eb 07 90 00 } //1
		$a_01_2 = {b8 31 c0 00 00 66 89 03 b8 6a 01 00 00 66 89 43 02 c6 43 04 68 83 4b 05 ff 66 c7 43 09 50 50 66 c7 43 0b 50 50 c6 43 0d e8 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}