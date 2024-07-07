
rule TrojanDownloader_Win64_PrivateLoader_CAZS_MTB{
	meta:
		description = "TrojanDownloader:Win64/PrivateLoader.CAZS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f 62 7a 2e 62 62 62 65 69 6f 61 61 67 2e 63 6f 6d 2f 73 74 73 2f 90 02 1f 2e 6a 70 67 90 00 } //1
		$a_01_1 = {76 00 69 00 65 00 77 00 3a 00 2f 00 2f 00 55 00 70 00 64 00 61 00 74 00 65 00 } //1 view://Update
		$a_01_2 = {76 00 69 00 65 00 77 00 3a 00 2f 00 2f 00 44 00 65 00 66 00 69 00 6e 00 69 00 69 00 74 00 6f 00 6e 00 55 00 70 00 64 00 61 00 74 00 65 00 } //1 view://DefiniitonUpdate
		$a_01_3 = {25 00 77 00 69 00 6e 00 64 00 69 00 72 00 25 00 5c 00 68 00 68 00 2e 00 65 00 78 00 65 00 } //1 %windir%\hh.exe
		$a_01_4 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 InstallLocation
		$a_01_5 = {53 00 75 00 62 00 6d 00 69 00 74 00 53 00 61 00 6d 00 70 00 6c 00 65 00 } //1 SubmitSample
		$a_01_6 = {53 00 63 00 61 00 6e 00 4e 00 6f 00 77 00 } //1 ScanNow
		$a_01_7 = {43 00 6c 00 65 00 61 00 6e 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 CleanSystem
		$a_01_8 = {53 00 68 00 6f 00 77 00 54 00 68 00 72 00 65 00 61 00 74 00 73 00 } //1 ShowThreats
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}