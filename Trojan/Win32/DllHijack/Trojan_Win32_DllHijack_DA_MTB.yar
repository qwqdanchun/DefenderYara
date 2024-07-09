
rule Trojan_Win32_DllHijack_DA_MTB{
	meta:
		description = "Trojan:Win32/DllHijack.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b7 84 14 ?? ?? ?? ?? 33 d9 09 94 04 ?? ?? ?? ?? 13 f9 33 94 44 ?? ?? ?? ?? 0f be 0c 14 0b 54 95 ?? 0f c9 36 66 8b 84 82 ?? ?? ?? ?? 8d ac 4d ?? ?? ?? ?? 2b c9 81 d9 ?? ?? ?? ?? 66 89 44 25 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}