
rule PWS_Win32_Sinowal_AK{
	meta:
		description = "PWS:Win32/Sinowal.AK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {85 c0 74 08 6a 00 ff 15 ?? ?? ?? ?? 53 90 09 13 00 c1 f9 ?? 89 0d ?? ?? ?? ?? e8 ?? ?? 00 00 e8 ?? ?? 00 00 } //1
		$a_03_1 = {85 c0 74 08 6a 00 ff 15 ?? ?? ?? ?? 53 90 09 14 00 c1 f9 ?? 51 8f 05 ?? ?? ?? ?? e8 ?? ?? 00 00 e8 ?? ?? 00 00 } //1
		$a_03_2 = {74 0c c7 05 ?? ?? ?? ?? 00 00 00 00 eb 0a c7 05 ?? ?? ?? ?? 01 00 00 00 eb ?? 5f 5e 8b e5 5d c3 } //1
		$a_03_3 = {74 0a 6a 00 8f 05 ?? ?? ?? ?? eb 0a c7 05 ?? ?? ?? ?? 01 00 00 00 eb ?? 5f 5e 8b e5 5d } //1
		$a_01_4 = {65 6e 74 77 65 64 65 72 20 6f 64 65 72 20 65 6e 74 77 65 64 65 72 20 6f 64 65 72 } //1 entweder oder entweder oder
		$a_01_5 = {64 00 75 00 6d 00 62 00 64 00 75 00 6d 00 62 00 2e 00 62 00 61 00 63 00 6b 00 70 00 75 00 } //1 dumbdumb.backpu
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}