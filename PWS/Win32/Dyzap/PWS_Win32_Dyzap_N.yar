
rule PWS_Win32_Dyzap_N{
	meta:
		description = "PWS:Win32/Dyzap.N,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0d 00 00 "
		
	strings :
		$a_03_0 = {83 c4 04 85 c0 74 15 8d 8d 40 fa ff ff 51 8d 85 10 fd ff ff e8 ?? ?? ?? ?? 83 c4 04 6a 00 ff 15 } //1
		$a_03_1 = {8b d7 52 8d 85 ?? ?? ?? ?? 33 c9 50 66 89 4d ?? ff d3 68 ?? ?? ?? ?? 8d 8d ?? ?? ?? ?? 51 ff d3 8d 95 } //1
		$a_01_2 = {67 00 6f 00 6f 00 67 00 6c 00 65 00 75 00 70 00 64 00 61 00 74 00 65 00 00 00 } //1
		$a_01_3 = {5a 00 77 00 51 00 75 00 65 00 75 00 65 00 41 00 70 00 63 00 54 00 68 00 72 00 65 00 61 00 64 00 3a 00 20 00 65 00 72 00 72 00 6f 00 72 00 20 00 63 00 6f 00 64 00 65 00 20 00 3d 00 20 00 25 00 } //1 ZwQueueApcThread: error code = %
		$a_00_4 = {2e 00 65 00 78 00 65 00 00 00 00 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 00 00 4c 00 6f 00 63 00 61 00 6c 00 00 00 5c 00 00 00 00 00 00 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 } //1
		$a_01_5 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 53 00 6f 00 } //1
		$a_01_6 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7a 00 78 00 35 00 66 00 77 00 74 00 77 00 34 00 65 00 70 00 } //1 Global\zx5fwtw4ep
		$a_01_7 = {89 5c 24 14 39 5e 04 0f 86 ba 00 00 00 8d 9e dc 00 00 00 83 7b 10 05 0f 85 82 00 00 00 83 } //1
		$a_03_8 = {69 72 74 75 61 6c 41 6c 6c 6f 63 00 90 09 02 00 00 90 04 01 06 41 2d 55 57 2d 5a } //1
		$a_01_9 = {3d 31 04 00 00 75 2c 68 ff 01 0f 00 e8 } //1
		$a_01_10 = {8d 45 f4 99 52 50 6a 00 6a 00 8d 45 e4 99 52 8b 55 08 50 51 52 6a 04 56 } //1
		$a_01_11 = {51 eb 17 eb 15 47 65 74 53 79 73 74 65 6d 50 6f } //1
		$a_01_12 = {eb 0f 50 ff d7 8b 74 24 10 c7 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=5
 
}