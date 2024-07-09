
rule Trojan_Win32_Azorult_RL_MTB{
	meta:
		description = "Trojan:Win32/Azorult.RL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {32 c2 88 01 c3 8d 40 00 55 8b ec 51 53 56 57 6a ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a ?? e8 ?? ?? ?? ?? 89 45 ?? 8b 7d ?? be ?? ?? ?? ?? bb ?? ?? ?? ?? 8b cf b2 ?? 8a 03 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}