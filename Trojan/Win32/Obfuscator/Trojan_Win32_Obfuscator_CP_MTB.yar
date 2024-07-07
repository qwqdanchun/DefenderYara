
rule Trojan_Win32_Obfuscator_CP_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.CP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {33 c0 a3 a8 90 01 03 a3 90 01 04 8b c7 c1 e0 04 03 44 24 34 8b f7 c1 ee 05 03 74 24 2c 03 d7 33 c2 81 3d 90 01 08 c7 05 90 01 08 89 44 24 0c 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}