
rule Trojan_Win32_CobaltCrypt_VC_MTB{
	meta:
		description = "Trojan:Win32/CobaltCrypt.VC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {eb 00 31 0d ?? ?? ?? ?? c7 05 [0-40] a1 ?? ?? ?? ?? 01 05 ?? ?? ?? ?? 8b ff a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 } //1
		$a_03_1 = {89 08 5f 5d 90 09 28 00 31 0d ?? ?? ?? ?? c7 05 [0-40] a1 ?? ?? ?? ?? 01 05 ?? ?? ?? ?? 8b ff a1 ?? ?? ?? ?? 8b 0d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}