
rule Trojan_BAT_SnakeKeylogger_MF_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {57 9d a2 29 09 03 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 45 00 00 00 18 00 00 00 50 00 00 00 69 00 00 00 ac } //02 00 
		$a_01_1 = {4a 61 6d 62 6f } //02 00 
		$a_01_2 = {53 6f 66 74 52 65 6e 64 65 72 65 72 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00 
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00 
		$a_01_4 = {49 6e 69 74 69 61 6c 69 7a 65 43 6f 6d 70 6f 6e 65 6e 74 } //01 00 
		$a_01_5 = {65 39 66 31 38 61 33 30 2d 35 37 63 30 2d 34 33 66 30 2d 39 31 62 36 2d 30 37 39 36 62 36 38 31 30 31 39 30 } //00 00 
	condition:
		any of ($a_*)
 
}