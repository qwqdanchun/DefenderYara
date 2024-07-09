
rule Trojan_BAT_SpySnake_MAL_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {0b 07 16 07 8e 69 28 ?? ?? ?? 0a 00 07 0c 2b 00 08 2a } //1
		$a_01_1 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //1 DynamicInvoke
		$a_03_2 = {3a 00 2f 00 2f 00 6d 00 69 00 63 00 6b 00 65 00 79 00 35 00 31 00 2e 00 63 00 6f 00 6d 00 2f 00 77 00 6f 00 72 00 64 00 70 00 72 00 65 00 73 00 73 00 2f 00 77 00 70 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2f 00 6d 00 65 00 64 00 69 00 61 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 [0-60] 2e 00 6a 00 70 00 67 00 } //1
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_4 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}