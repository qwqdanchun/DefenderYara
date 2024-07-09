
rule Trojan_Win32_Glupteba_MI_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b c1 c1 e8 05 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 8b ?? c1 ?? 04 03 ?? ?? 03 c1 33 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}