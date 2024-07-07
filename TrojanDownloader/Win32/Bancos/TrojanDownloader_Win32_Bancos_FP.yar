
rule TrojanDownloader_Win32_Bancos_FP{
	meta:
		description = "TrojanDownloader:Win32/Bancos.FP,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 75 00 74 00 61 00 2e 00 64 00 6c 00 6c 00 } //1 \puta.dll
		$a_00_1 = {2f 00 73 00 6f 00 63 00 69 00 6f 00 73 00 2f 00 64 00 61 00 74 00 6f 00 73 00 2e 00 70 00 68 00 70 00 } //1 /socios/datos.php
		$a_00_2 = {3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 64 00 66 00 74 00 6d 00 6f 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 :\WINDOWS\system32\cdftmong.exe
		$a_02_3 = {5c 00 47 00 65 00 6c 00 74 00 69 00 58 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 75 00 74 00 65 00 6e 00 63 00 69 00 61 00 5c 00 50 00 75 00 74 00 65 00 6e 00 63 00 69 00 61 00 5c 00 90 02 10 2e 00 76 00 62 00 70 00 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*2) >=4
 
}