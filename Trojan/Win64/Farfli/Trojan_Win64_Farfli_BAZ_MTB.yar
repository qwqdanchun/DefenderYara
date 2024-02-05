
rule Trojan_Win64_Farfli_BAZ_MTB{
	meta:
		description = "Trojan:Win64/Farfli.BAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 33 c9 45 33 c0 48 8b c8 4c 89 64 24 28 48 89 bc 24 88 04 00 00 c7 44 24 20 00 00 00 04 ff 15 } //01 00 
		$a_01_1 = {4c 89 64 24 30 45 33 c9 45 33 c0 ba 00 00 00 40 48 8b ce 44 89 64 24 28 c7 44 24 40 01 00 00 00 c7 44 24 20 02 00 00 00 ff 15 } //01 00 
		$a_01_2 = {55 00 73 00 65 00 72 00 73 00 5c 00 50 00 75 00 62 00 6c 00 69 00 63 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 5c 00 4e 00 47 00 4c 00 41 00 } //01 00 
		$a_01_3 = {70 00 73 00 2e 00 7a 00 69 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}