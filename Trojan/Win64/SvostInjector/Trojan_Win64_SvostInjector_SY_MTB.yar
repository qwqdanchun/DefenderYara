
rule Trojan_Win64_SvostInjector_SY_MTB{
	meta:
		description = "Trojan:Win64/SvostInjector.SY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 d2 48 8d ?? ?? ?? 48 ?? ?? ?? ?? 4c ?? ?? ?? ?? 4c ?? ?? ?? ?? c7 ?? ?? ?? 04 00 00 00 44 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 48 ?? ?? ?? ?? 41 ?? 00 10 00 00 8b ?? ?? ?? 48 8b ?? 48 ?? ?? ?? ?? 44 ?? ?? 33 ?? c7 ?? ?? ?? 40 00 00 00 ff 15 ?? ?? ?? ?? 44 ?? ?? 4c ?? ?? ?? ?? 48 ?? ?? 4d ?? ?? 48 ?? ?? 48 ?? ?? ff 15 ?? ?? ?? ?? 45 ?? ?? 48 ?? ?? 48 ?? ?? ff 15 ?? ?? ?? ?? 48 ?? ?? ff 15 } //2
		$a_03_1 = {33 d2 48 89 ?? ?? ?? ?? ?? ?? 44 ?? ?? ?? ?? e8 ?? ?? ?? ?? 33 c0 4c ?? ?? ?? ?? 48 ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? 45 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}