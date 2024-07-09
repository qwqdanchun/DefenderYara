
rule Trojan_Win32_Zenpack_NO_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.NO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 fa 81 3d ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 75 90 0a 2a 00 8b 4d ?? 8b 55 ?? 8b f3 c1 ee 05 03 75 ?? 03 f9 03 d3 } //1
		$a_03_1 = {33 f3 33 f7 29 75 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 75 90 0a 50 00 8b 75 ?? c1 ee 05 03 75 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ff ff ff ff 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}