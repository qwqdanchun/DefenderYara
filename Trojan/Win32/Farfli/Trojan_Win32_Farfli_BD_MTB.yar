
rule Trojan_Win32_Farfli_BD_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 75 63 6b 30 30 37 66 75 63 6b 6d 65 } //01 00 
		$a_01_1 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //01 00 
		$a_01_2 = {5b 53 63 72 6f 6c 6c 20 4c 6f 63 6b 5d } //01 00 
		$a_01_3 = {6c 6c 64 2e 32 33 69 70 61 76 64 61 } //01 00 
		$a_01_4 = {5b 50 72 69 6e 74 20 53 63 72 65 65 6e 5d } //01 00 
		$a_01_5 = {79 75 61 6e 63 68 65 6e 67 } //01 00 
		$a_01_6 = {57 61 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}