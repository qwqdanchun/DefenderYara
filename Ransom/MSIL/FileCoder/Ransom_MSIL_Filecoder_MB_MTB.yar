
rule Ransom_MSIL_Filecoder_MB_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {13 24 11 24 28 90 01 03 0a 13 25 00 11 25 13 26 16 13 27 2b 35 11 26 11 27 9a 13 28 00 00 07 11 28 11 28 72 90 01 03 70 28 90 01 03 0a 6f 90 01 03 06 00 11 28 28 90 01 03 0a 00 00 de 05 90 00 } //1
		$a_03_1 = {13 05 04 18 73 90 01 03 0a 13 06 2b 0b 11 06 11 07 d2 6f 90 01 03 0a 00 11 05 6f 90 01 03 0a 25 13 07 15 fe 01 16 fe 01 13 08 11 08 2d df 90 00 } //1
		$a_01_2 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 42 00 53 00 4f 00 44 00 2e 00 65 00 78 00 65 00 } //1 \Windows\BSOD.exe
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 } //1 DisableTaskMg
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_5 = {5c 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 \decrypted
		$a_01_6 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
		$a_01_7 = {2e 00 46 00 41 00 42 00 52 00 49 00 43 00 50 00 4c 00 55 00 53 00 } //1 .FABRICPLUS
		$a_01_8 = {6e 00 6f 00 74 00 76 00 61 00 6c 00 69 00 64 00 65 00 6d 00 61 00 69 00 6c 00 61 00 64 00 72 00 65 00 73 00 73 00 2e 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 notvalidemailadress.ransom@gmail.com
		$a_01_9 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}