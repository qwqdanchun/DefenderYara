
rule TrojanDropper_Win32_Banker_C{
	meta:
		description = "TrojanDropper:Win32/Banker.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 0a 00 00 "
		
	strings :
		$a_03_0 = {62 61 6e 65 73 74 65 73 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_1 = {63 72 65 64 69 63 61 72 64 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_2 = {70 61 67 61 6d 65 6e 74 6f 64 69 67 69 74 61 6c 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_3 = {70 61 79 70 61 6c 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_4 = {62 72 61 64 65 73 63 6f 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_5 = {62 61 6e 72 69 73 75 6c 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_6 = {73 65 72 61 73 61 65 78 70 65 72 69 61 6e 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_7 = {61 6d 65 72 69 63 61 6e 65 78 70 72 65 73 73 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_8 = {69 74 61 75 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
		$a_03_9 = {68 6f 74 6d 61 69 6c 2e 63 6f 6d 2e 62 72 90 02 05 3e 3e 90 02 20 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1) >=3
 
}