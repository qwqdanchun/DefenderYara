
rule Trojan_Win64_Alureon_gen_E{
	meta:
		description = "Trojan:Win64/Alureon.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {be 53 46 00 00 48 03 c2 41 b9 00 02 00 00 b1 2a 48 c1 f8 09 } //01 00 
		$a_03_1 = {48 b8 14 00 00 00 80 f7 ff ff 8b 00 89 05 90 01 04 ff 15 90 01 04 48 8d 0d 90 01 04 44 90 00 } //01 00 
		$a_01_2 = {49 00 4e 00 20 00 4d 00 49 00 4e 00 54 00 } //00 00 
	condition:
		any of ($a_*)
 
}