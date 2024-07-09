
rule Trojan_Win32_BaseLoader_MR_MTB{
	meta:
		description = "Trojan:Win32/BaseLoader.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_02_0 = {0a 02 02 28 [0-04] 06 6f [0-04] 72 [0-04] 72 [0-04] 72 [0-04] 28 [0-05] 28 [0-04] 72 [0-05] 28 [0-04] 26 2a 90 09 21 00 02 03 72 [0-04] 72 [0-04] 72 [0-04] 28 [0-04] 16 28 [0-04] 74 } //1
		$a_81_1 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_81_2 = {53 74 61 72 74 73 57 69 74 68 } //1 StartsWith
		$a_81_3 = {45 6e 64 73 57 69 74 68 } //1 EndsWith
		$a_81_4 = {54 6f 43 68 61 72 } //1 ToChar
		$a_81_5 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_6 = {54 6f 42 79 74 65 } //1 ToByte
		$a_81_7 = {54 6f 49 6e 74 33 32 } //1 ToInt32
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}