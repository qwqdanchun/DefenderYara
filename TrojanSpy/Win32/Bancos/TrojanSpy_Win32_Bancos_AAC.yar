
rule TrojanSpy_Win32_Bancos_AAC{
	meta:
		description = "TrojanSpy:Win32/Bancos.AAC,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 06 00 00 "
		
	strings :
		$a_01_0 = {54 00 54 00 57 00 4f 00 42 00 52 00 4f 00 } //1 TTWOBRO
		$a_01_1 = {54 74 77 6f 62 72 6f 06 74 77 6f 62 72 6f } //1 瑔潷牢ٯ睴扯潲
		$a_01_2 = {4d 00 61 00 69 00 6e 00 5a 00 69 00 6f 00 6e 00 } //1 MainZion
		$a_03_3 = {66 ba bf 07 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d ?? ?? 66 ba bf 07 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d ?? ?? 66 ba bf 07 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d } //50
		$a_03_4 = {c1 eb 08 66 33 cb 66 [0-19] 66 69 c0 01 d2 66 05 6a 7f 66 } //50
		$a_03_5 = {c1 e9 08 66 33 d1 66 [0-14] 66 69 c6 01 d2 66 05 6a 7f } //50
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*50+(#a_03_4  & 1)*50+(#a_03_5  & 1)*50) >=101
 
}