
rule Trojan_Win64_QuasarRAT_A_MTB{
	meta:
		description = "Trojan:Win64/QuasarRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 89 d9 48 89 c3 31 c0 e8 90 01 02 fa ff 48 89 44 24 68 48 89 4c 24 38 48 89 c7 48 89 de 49 89 c8 e8 90 01 02 fe ff 48 8b 54 24 38 48 39 d0 0f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}