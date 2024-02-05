
rule Trojan_Win32_CryptInject_DK_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.DK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {81 f3 f4 c9 c6 27 81 84 24 90 02 08 35 16 4f e3 0c c1 e0 1f 90 00 } //02 00 
		$a_03_1 = {46 81 fe bd ef 09 37 0f 8c 90 02 04 33 c9 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}