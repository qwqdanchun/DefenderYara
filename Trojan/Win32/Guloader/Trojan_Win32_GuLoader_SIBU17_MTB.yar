
rule Trojan_Win32_GuLoader_SIBU17_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.SIBU17!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {75 6e 6b 6e 6f 77 6e 64 6c 6c 2e 70 64 62 } //1 unknowndll.pdb
		$a_03_1 = {ff 34 0f d9 ?? ?? ?? ?? [0-6a] 31 04 24 [0-64] 8f 04 0f [0-6c] 83 c1 04 [0-50] 81 f9 ?? ?? ?? ?? [0-40] 0f 85 ?? ?? ?? ?? [0-b0] ff d7 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}