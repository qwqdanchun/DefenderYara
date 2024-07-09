
rule Trojan_Win32_TurlaCarbon{
	meta:
		description = "Trojan:Win32/TurlaCarbon,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {48 83 c0 f8 48 83 f8 1f 0f 87 ?? ?? ?? ?? 48 8b cb e8 ?? ?? ?? ?? bf 08 00 00 00 48 89 75 00 48 bb 64 65 6c 5f 74 61 73 6b } //1
		$a_01_1 = {bb 04 00 00 00 48 89 75 00 48 8d 54 24 50 48 89 5d f8 48 8d 4d a8 c7 45 e8 6e 61 6d 65 44 88 65 ec e8 } //1
		$a_01_2 = {55 70 6c 6f 61 64 69 6e 67 3a 20 } //1 Uploading: 
		$a_01_3 = {44 65 6c 65 74 69 6e 67 3a 20 } //1 Deleting: 
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 3a 20 } //1 Downloading: 
		$a_01_5 = {4c 69 73 74 20 66 69 6c 65 73 20 66 6f 72 3a 20 } //1 List files for: 
		$a_01_6 = {7b 22 55 55 49 44 22 3a 22 00 } //1 ≻啕䑉㨢"
		$a_01_7 = {22 2c 20 22 64 61 74 61 22 3a 22 00 } //1 Ⱒ∠慤慴㨢"
		$a_01_8 = {22 2c 20 22 74 79 70 65 22 3a 22 00 } //1 Ⱒ∠祴数㨢"
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}