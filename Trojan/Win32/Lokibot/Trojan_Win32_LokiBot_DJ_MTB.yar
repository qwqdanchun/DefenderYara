
rule Trojan_Win32_LokiBot_DJ_MTB{
	meta:
		description = "Trojan:Win32/LokiBot.DJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {bb 01 00 00 00 8b ca 03 cb [0-04] c6 01 d9 43 48 75 f3 } //1
		$a_03_1 = {b2 bc 8b c3 85 c0 79 05 e8 ?? ?? ?? ?? 8b fe 03 f8 90 05 10 01 90 a1 ?? ?? ?? ?? 3d ?? ?? ?? ?? 76 05 e8 ?? ?? ?? ?? 8a 80 ?? ?? ?? ?? 32 c2 88 07 90 05 10 01 90 83 05 ?? ?? ?? ?? 02 43 81 fb ?? ?? ?? ?? 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}