
rule Trojan_Win32_SmokeLoader_PB_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {40 62 61 6e 67 50 72 65 63 69 73 69 6f 6e 40 34 } //1 @bangPrecision@4
		$a_00_1 = {40 70 6c 75 73 54 6f 6b 65 6e 41 66 74 65 72 40 34 } //1 @plusTokenAfter@4
		$a_00_2 = {40 79 75 72 69 69 40 34 } //1 @yurii@4
		$a_02_3 = {6a 02 59 cd 29 a3 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 89 1d ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 89 3d ?? ?? ?? ?? 66 8c 15 ?? ?? ?? ?? 66 8c 0d ?? ?? ?? ?? 66 8c 1d ?? ?? ?? ?? 66 8c 05 ?? ?? ?? ?? 66 8c 25 ?? ?? ?? ?? 66 8c 2d } //1
		$a_02_4 = {6a 00 6a 00 6a 00 6a 00 ff 15 ?? ?? ?? ?? 6a 00 6a 00 8d 44 24 ?? 50 6a 00 6a 00 6a 00 ff 15 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=4
 
}