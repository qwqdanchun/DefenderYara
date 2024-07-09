
rule Trojan_BAT_LokiBot_ET_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.ET!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 "
		
	strings :
		$a_03_0 = {33 00 2e 00 37 00 30 00 2e 00 32 00 34 00 37 00 2e 00 32 00 32 00 39 00 2f 00 63 00 6c 00 61 00 73 00 73 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 [0-50] 2e 00 70 00 6e 00 67 00 } //10
		$a_03_1 = {33 00 2e 00 37 00 30 00 2e 00 32 00 34 00 37 00 2e 00 32 00 32 00 39 00 2f 00 63 00 6c 00 61 00 73 00 73 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 [0-50] 2e 00 6a 00 70 00 67 00 } //10
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_01_4 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_5 = {57 65 62 52 65 73 70 6f 6e 73 65 } //1 WebResponse
		$a_01_6 = {43 6f 70 79 54 6f } //1 CopyTo
		$a_01_7 = {53 6c 65 65 70 } //1 Sleep
		$a_01_8 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //1 System.Threading
		$a_01_9 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=18
 
}