
rule Trojan_Win64_DarkGate_CCBP_MTB{
	meta:
		description = "Trojan:Win64/DarkGate.CCBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 b8 69 73 6d 2e 31 5c 63 69 48 ba 6c 62 75 70 5c 73 72 65 48 89 44 24 20 48 8d 4c 24 20 48 b8 90 01 08 48 89 54 24 28 48 ba 90 01 08 48 89 44 24 30 48 b8 90 01 08 48 89 54 90 00 } //1
		$a_03_1 = {24 38 48 ba 90 01 08 48 89 44 24 40 48 b8 90 01 08 48 89 54 24 48 48 ba 90 01 08 48 89 44 24 50 48 b8 90 01 08 48 89 54 24 58 48 ba 90 01 08 48 89 90 00 } //1
		$a_03_2 = {44 24 60 48 b8 90 01 08 48 89 54 24 68 48 ba 90 01 08 48 89 44 24 70 48 b8 90 01 08 48 89 54 24 78 48 ba 90 01 08 48 89 84 24 80 00 00 00 48 b8 90 01 08 48 89 94 24 88 00 00 00 48 ba 90 01 08 48 89 84 24 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}