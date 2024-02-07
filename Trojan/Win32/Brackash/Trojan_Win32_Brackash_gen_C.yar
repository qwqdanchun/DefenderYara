
rule Trojan_Win32_Brackash_gen_C{
	meta:
		description = "Trojan:Win32/Brackash.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,15 00 14 00 0a 00 00 0a 00 "
		
	strings :
		$a_03_0 = {74 0d 53 56 68 f4 05 00 00 50 e8 90 01 02 ff ff a1 90 00 } //07 00 
		$a_03_1 = {50 6a 0a e8 90 01 02 ff ff a3 90 00 } //01 00 
		$a_01_2 = {6d 65 6d 6f 72 79 } //01 00  memory
		$a_01_3 = {72 61 6e 64 6f 6d } //01 00  random
		$a_01_4 = {62 62 6f 79 } //01 00  bboy
		$a_01_5 = {62 65 61 75 74 79 } //01 00  beauty
		$a_01_6 = {67 72 6f 75 70 } //01 00  group
		$a_01_7 = {66 75 6e 63 69 6f 6e } //01 00  funcion
		$a_01_8 = {62 6f 62 61 65 } //01 00  bobae
		$a_01_9 = {68 61 74 65 } //00 00  hate
	condition:
		any of ($a_*)
 
}