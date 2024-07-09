
rule Trojan_Win32_Qakbotcrypt_GE_MTB{
	meta:
		description = "Trojan:Win32/Qakbotcrypt.GE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {8a 14 32 88 14 01 a1 ?? ?? ?? ?? 83 c0 01 a3 ?? ?? ?? ?? eb 90 0a 32 00 03 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 8b 15 } //10
		$a_02_1 = {8b 0d 8b 11 89 15 [0-64] 33 ?? 8b c2 a3 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 5d c3 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=10
 
}