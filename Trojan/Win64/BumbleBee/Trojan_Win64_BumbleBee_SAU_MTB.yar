
rule Trojan_Win64_BumbleBee_SAU_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.SAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {31 04 0a 48 ?? ?? ?? 8b 8f ?? ?? ?? ?? 8b c1 44 ?? ?? ?? ?? ?? ?? 41 ?? ?? 2d ?? ?? ?? ?? 09 87 ?? ?? ?? ?? 8d 41 ?? 8b 8f ?? ?? ?? ?? 0f af c8 89 8f ?? ?? ?? ?? 8b 8f ?? ?? ?? ?? 01 8f ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 0f 8c } //1
		$a_00_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}