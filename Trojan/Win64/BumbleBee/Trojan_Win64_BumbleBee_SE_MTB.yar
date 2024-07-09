
rule Trojan_Win64_BumbleBee_SE_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.SE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {c7 45 e3 22 23 00 00 81 f2 ?? ?? ?? ?? 44 89 6d ?? 8b 88 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? c7 45 ef ?? ?? ?? ?? c7 45 eb ?? ?? ?? ?? 3b ca 77 } //1
		$a_03_1 = {48 8b 88 e0 02 00 00 48 ?? ?? ?? ?? ?? ?? 49 8b 87 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 49 8b 87 ?? ?? ?? ?? 41 bb ?? ?? ?? ?? 4d 8b 4f ?? 69 ?? ?? ?? ?? ?? ?? ?? ?? ?? 41 8b 89 } //1
		$a_00_2 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}