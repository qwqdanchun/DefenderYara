
rule Trojan_Win32_NSISInject_FX_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 "
		
	strings :
		$a_03_0 = {89 45 ec 6a 40 68 00 30 00 00 8b ?? ec ?? 6a 00 ff 15 } //10
		$a_03_1 = {89 45 f0 6a 40 68 00 30 00 00 8b ?? f0 ?? 6a 00 ff 15 } //10
		$a_01_2 = {6a 40 68 00 30 00 00 8b d8 53 57 ff 15 } //10
		$a_03_3 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 80 8d ?? d4 fe ff ff ?? ff 15 } //5
		$a_01_4 = {57 68 80 00 00 00 6a 03 57 6a 01 68 00 00 00 80 50 ff 15 } //5
		$a_03_5 = {88 4d ff 8b 55 f4 03 55 f8 8a 45 ff 88 02 e9 ?? ?? ?? ?? 6a 00 8b 4d f4 51 ff 15 [0-06] 8b e5 5d } //1
		$a_03_6 = {88 45 ff 8b 4d f4 03 4d f8 8a 55 ff 88 11 e9 ?? ?? ?? ?? 6a 00 8b 45 f4 50 ff 15 [0-06] 33 c0 8b e5 5d c3 } //1
		$a_03_7 = {6a 00 57 ff 15 ?? ?? ?? ?? 5f 5e 33 c0 5b c9 c3 90 09 04 00 3b d3 72 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*10+(#a_03_3  & 1)*5+(#a_01_4  & 1)*5+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=16
 
}