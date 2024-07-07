
rule Trojan_Win32_Vundo_PD{
	meta:
		description = "Trojan:Win32/Vundo.PD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {0f b6 00 2d 8b 00 00 00 85 c0 74 18 } //1
		$a_03_1 = {0f b6 40 01 8b 0d 90 01 04 0f b6 49 0e 2b c1 85 c0 90 01 01 0f 90 00 } //1
		$a_03_2 = {33 c1 8b 0d 90 01 04 03 0d 90 01 04 88 01 e9 90 09 15 00 8a 00 a2 90 01 04 0f b6 05 90 01 04 0f b6 0d 90 00 } //1
		$a_03_3 = {8a 00 32 05 90 01 04 8b 0d 90 01 04 03 0d 90 01 04 88 01 a1 90 01 04 25 f0 01 00 00 90 00 } //1
		$a_03_4 = {c6 86 08 00 00 00 56 a3 90 01 04 c6 86 09 00 00 00 69 90 00 } //1
		$a_03_5 = {0f b7 45 10 83 e8 68 0f 84 90 01 04 48 74 0d 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}