
rule Trojan_Win32_CryptInject_ZA_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {b9 05 00 00 00 2b 88 ?? ?? ?? ?? 01 88 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 8b 48 ?? 81 f1 ?? ?? ?? ?? 0f af 4a ?? 89 4a ?? 8b 88 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 03 88 ?? ?? ?? ?? 31 88 b0 00 00 00 8b ce 0f af ce 46 01 88 ?? ?? ?? ?? 3b 70 ?? 76 b0 } //2
		$a_03_1 = {c1 ea 18 01 86 ?? ?? ?? ?? 8b 4e ?? 8b 86 ?? ?? ?? ?? 88 14 01 8b cb ff 46 ?? a1 ?? ?? ?? ?? 8b 56 ?? c1 e9 10 8b 80 ?? ?? ?? ?? 88 0c 02 8b d3 ff 46 ?? a1 ?? ?? ?? ?? c1 ea } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}