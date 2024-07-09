
rule TrojanDownloader_Win32_Dofoil_AB{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.AB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_03_0 = {40 1a cd 00 0f 84 ?? ?? 00 00 81 7d ?? 46 46 14 70 } //1
		$a_03_1 = {3d 40 44 1e 42 74 ?? 3d 44 47 19 44 } //1
		$a_03_2 = {3c 69 0f 84 ?? ?? 00 00 3c 72 0f 84 ?? ?? 00 00 3c 75 74 } //1
		$a_01_3 = {c6 44 24 32 e9 51 b8 90 90 00 00 8d 4c 24 34 66 89 44 24 34 } //2
		$a_03_4 = {c6 04 48 2f b9 00 01 80 00 83 7c 24 ?? 02 b8 00 01 00 00 0f 44 c1 50 6a 00 6a 00 6a 00 ff 74 24 ?? 56 53 ff 15 ?? ?? ?? ?? 8b f0 85 f6 0f 84 ?? ?? 00 00 83 7c 24 ?? 02 75 ?? 6a 04 8d 44 24 ?? c7 44 24 ?? 00 33 00 00 } //2
		$a_03_5 = {44 3a 50 00 90 09 03 00 c7 45 } //1
		$a_03_6 = {25 73 5c 25 90 09 04 00 c7 44 24 } //1
		$a_03_7 = {68 74 74 70 90 09 04 00 c7 44 24 } //1
		$a_03_8 = {25 30 32 58 90 09 03 00 c7 45 } //1
		$a_03_9 = {2e 62 69 74 90 09 03 00 c7 45 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*2+(#a_03_4  & 1)*2+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1) >=5
 
}
rule TrojanDownloader_Win32_Dofoil_AB_2{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.AB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6c 73 6d 72 63 61 65 41 } //1 lsmrcaeA
		$a_01_1 = {6d 6e 48 31 32 32 } //1 mnH122
		$a_01_2 = {54 6b 6e 6a 51 74 33 34 2d 66 73 65 2b 64 67 66 2e 31 31 31 68 31 32 } //1 TknjQt34-fse+dgf.111h12
		$a_01_3 = {67 69 70 4f 6f 5a 61 55 79 69 } //1 gipOoZaUyi
		$a_01_4 = {56 51 53 6f 6c 4c 55 62 69 4a } //1 VQSolLUbiJ
		$a_01_5 = {39 45 65 74 6d 63 6d 70 69 5f 74 68 78 } //1 9Eetmcmpi_thx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}