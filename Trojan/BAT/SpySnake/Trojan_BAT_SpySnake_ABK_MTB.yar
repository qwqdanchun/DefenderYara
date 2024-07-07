
rule Trojan_BAT_SpySnake_ABK_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.ABK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 16 09 16 1f 10 28 90 01 03 0a 11 04 16 09 1f 0f 1f 10 28 90 01 03 0a 06 09 6f 90 01 03 0a 06 18 6f 90 01 03 0a 06 6f 90 01 03 0a 13 05 02 28 90 01 03 0a 13 06 28 90 01 03 0a 11 05 11 06 16 11 06 8e 69 6f 90 01 03 0a 6f 90 01 03 0a 0c de 03 90 00 } //10
		$a_01_1 = {49 41 73 79 6e 63 4c 6f 63 61 6c } //1 IAsyncLocal
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=14
 
}