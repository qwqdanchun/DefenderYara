
rule Trojan_Win64_QuasarRAT_E_MTB{
	meta:
		description = "Trojan:Win64/QuasarRAT.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {4d 89 63 18 48 8d 15 64 22 00 00 45 33 e4 4d 89 73 d8 48 8b f1 4c 89 65 0f 45 33 c9 4c 89 65 17 45 33 c0 44 89 65 1f 48 8d 4d 0f 44 89 65 23 44 89 65 0b 45 8b f4 45 8b fc 44 89 65 07 bf 01 00 00 00 ff 15 } //02 00 
		$a_01_1 = {48 8b 46 20 48 8d 55 17 44 8b 4d 0b 4d 8b c6 48 8b 4d 0f 44 89 64 24 30 c7 44 24 28 20 00 00 00 48 89 44 24 20 ff 15 } //02 00 
		$a_01_2 = {44 8b 46 18 48 8d 45 07 48 8b 56 10 45 33 c9 48 8b 4d 17 89 7c 24 48 48 89 44 24 40 48 8b 46 28 44 89 64 24 38 4c 89 64 24 30 c7 44 24 28 10 00 00 00 48 89 44 24 20 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}