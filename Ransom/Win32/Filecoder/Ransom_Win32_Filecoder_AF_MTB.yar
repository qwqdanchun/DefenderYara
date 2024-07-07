
rule Ransom_Win32_Filecoder_AF_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 7a 00 7a 00 7a 00 5c 00 63 00 72 00 79 00 70 00 74 00 5c 00 63 00 72 00 79 00 70 00 74 00 35 00 2e 00 76 00 62 00 70 00 } //1 C:\zzz\crypt\crypt5.vbp
		$a_01_1 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 31 00 63 00 76 00 38 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM 1cv8.exe /F
		$a_01_2 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 77 00 69 00 6e 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM winword.exe /F
		$a_01_3 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 65 00 78 00 63 00 65 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM excel.exe /F
		$a_01_4 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 70 00 6f 00 77 00 65 00 72 00 70 00 6e 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM powerpnt.exe /F
		$a_01_5 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 76 00 6d 00 77 00 61 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM vmware.exe /F
		$a_01_6 = {54 00 41 00 53 00 4b 00 4b 00 49 00 4c 00 4c 00 20 00 2f 00 49 00 4d 00 20 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 42 00 6f 00 78 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 TASKKILL /IM VirtualBox.exe /F
		$a_01_7 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 6b 00 65 00 79 00 31 00 2e 00 74 00 78 00 74 00 } //1 Desktop\key1.txt
		$a_01_8 = {63 00 3a 00 5c 00 31 00 5c 00 31 00 2e 00 62 00 6d 00 70 00 } //1 c:\1\1.bmp
		$a_01_9 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 53 00 2e 00 74 00 78 00 74 00 } //1 Desktop\INSTRUCTIONS.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}