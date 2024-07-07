
rule Trojan_Win32_VB_ABP{
	meta:
		description = "Trojan:Win32/VB.ABP,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {32 00 30 00 30 00 38 00 2d 00 31 00 31 00 2d 00 34 00 20 00 31 00 38 00 3a 00 32 00 34 00 3a 00 30 00 39 00 } //1 2008-11-4 18:24:09
		$a_01_1 = {64 00 39 00 00 00 1c 00 00 00 31 00 64 00 2e 00 63 00 6f 00 6d 00 2f 00 3f 00 31 00 32 00 33 00 34 00 35 00 36 } //1
		$a_01_2 = {68 00 65 00 00 00 08 00 00 00 6e 00 62 00 75 00 63 00 00 00 00 00 16 00 00 00 75 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 3f 00 31 00 32 00 33 00 00 00 06 00 00 00 34 00 35 00 36 } //1
		$a_01_3 = {47 00 3a 00 5c 00 11 62 84 76 56 00 42 00 5c 00 a9 8b 7e 76 a6 5e 1c 64 22 7d d3 7e 9c 67 bb 53 07 63 9a 5b 30 57 40 57 5c 00 75 00 39 00 75 00 38 00 0b 4e 7d 8f 4b 6d d5 8b 5c 00 85 8f 32 00 f7 53 b0 65 20 00 43 00 46 00 5c 00 74 00 65 00 6e 00 6e 00 65 00 6e 00 74 00 2e 00 76 00 62 00 70 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}