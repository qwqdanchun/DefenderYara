
rule Trojan_Win32_Zenpack_ED_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {5d c3 8d 05 ?? ?? ?? ?? 89 25 ?? ?? ?? ?? eb 05 e9 ?? ?? ?? ?? 89 da 01 15 ?? ?? ?? ?? 89 f0 01 05 ?? ?? ?? ?? b9 03 00 00 00 89 e8 01 05 ?? ?? ?? ?? 89 f8 01 ?? ?? ?? ?? ?? e2 d4 c3 89 45 } //4
		$a_01_1 = {72 65 74 2e 70 64 62 } //1 ret.pdb
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}