
rule TrojanSpy_Win32_Noon_MD_MTB{
	meta:
		description = "TrojanSpy:Win32/Noon.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8d 64 24 00 8a 91 ?? ?? ?? ?? 30 ?? ?? ?? ?? ?? 83 f9 ?? 75 ?? 33 c9 eb ?? 41 40 3b c6 72 ?? 8d ?? ?? 50 6a ?? 56 68 ?? ?? ?? ?? ff } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}