
rule Trojan_Win32_Obfuscator_EP_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.EP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 c0 8a 44 90 02 30 99 f7 f9 8a 03 83 c4 90 01 01 8a 54 14 18 32 c2 88 03 8b 44 24 10 43 48 89 44 24 10 0f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}