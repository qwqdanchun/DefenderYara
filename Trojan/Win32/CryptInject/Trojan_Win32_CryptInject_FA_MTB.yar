
rule Trojan_Win32_CryptInject_FA_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.FA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {33 f7 29 74 24 10 89 1d ?? ?? ?? ?? 81 f9 ?? ?? ?? ?? 75 [0-30] 8b 54 24 10 8b 74 24 ?? 89 16 81 f9 ?? ?? ?? ?? 75 } //1
		$a_03_1 = {88 14 01 c3 90 0a 20 00 8b 0d ?? ?? ?? ?? 8a 94 01 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 88 14 01 c3 } //1
		$a_03_2 = {8d 9b 00 00 00 00 81 f9 ?? ?? ?? ?? 75 ?? e8 ?? ?? ?? ?? 41 81 f9 ?? ?? ?? ?? 7c ?? ff 15 ?? ?? ?? ?? 8b 8c 24 ?? ?? 00 00 5e } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}