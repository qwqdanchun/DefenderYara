
rule Trojan_Win32_SmokeLoader_MIU_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.MIU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c6 c1 e8 ?? 89 45 ?? 8d 45 ?? 50 e8 ?? ?? ?? ?? 52 8d 45 ?? 50 e8 ?? ?? ?? ?? 8b 45 ?? 33 45 ?? 83 65 ?? ?? 2b f8 8b 45 ?? 01 45 ?? 29 45 ?? ff 4d ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}