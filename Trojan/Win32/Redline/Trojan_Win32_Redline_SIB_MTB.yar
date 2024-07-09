
rule Trojan_Win32_Redline_SIB_MTB{
	meta:
		description = "Trojan:Win32/Redline.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {f3 0f 6f 8c 3f ?? ?? ?? ?? f3 0f 6f 94 3f ?? ?? ?? ?? 66 0f db d0 66 0f db c8 66 0f 67 ca f3 0f 7f 0c 3b 83 c7 ?? 81 ff ?? ?? ?? ?? 75 ?? a0 ?? ?? ?? ?? 8a 0d ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 8d 7e ?? 88 83 ?? ?? ?? ?? 88 8b ?? ?? ?? ?? 8a 0d ?? ?? ?? ?? 88 93 ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 88 8b ?? ?? ?? ?? 8a 0d ?? ?? ?? ?? 88 93 ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 88 8b } //1
		$a_03_1 = {89 f0 81 e6 ?? ?? ?? ?? f7 d0 89 c1 09 f8 83 e1 ?? f7 d0 09 ce 89 f9 83 e7 ?? f7 d1 81 e1 ?? ?? ?? ?? 09 f9 bf ?? ?? ?? ?? 31 f1 8b 75 ?? 09 c8 8b 4d ?? 88 01 31 c9 8a 45 ?? 28 c1 b0 ?? 28 c8 b1 ?? b5 ?? 28 c1 b0 ?? 28 c8 28 c5 b0 ?? 28 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}