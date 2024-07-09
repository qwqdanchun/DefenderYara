
rule Trojan_Win32_CobaltStrike_TE_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.TE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f af da 8b d3 c1 ea 10 88 14 01 8b d3 ff 47 ?? 8b 87 ?? ?? ?? ?? 2d ?? ?? ?? ?? c1 ea 08 31 05 54 7a 4d 00 8b 47 6c 8b 8f ?? ?? ?? ?? 88 14 01 ff 47 ?? 8b 4f ?? a1 ?? ?? ?? ?? 88 1c 01 ff 47 6c 81 fe ?? ?? ?? ?? 0f 8c } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}