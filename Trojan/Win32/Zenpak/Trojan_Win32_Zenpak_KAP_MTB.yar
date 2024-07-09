
rule Trojan_Win32_Zenpak_KAP_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.KAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 2c 32 8b 15 ?? ?? ?? ?? 30 cd 88 2d ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 8b 55 ?? 88 2c 32 8b 55 ?? 39 d7 89 7d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}