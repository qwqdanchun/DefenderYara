
rule Trojan_BAT_SnakeKeylogger_ED_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 06 00 00 14 00 "
		
	strings :
		$a_03_0 = {14 0b 14 0c 28 90 01 03 06 74 90 01 03 1b 0c 08 17 28 90 01 03 06 a2 08 18 72 90 01 03 70 a2 08 16 28 90 01 03 06 a2 02 7b 90 01 03 04 08 28 90 01 03 0a 26 08 0a 2b 00 06 2a 90 00 } //05 00 
		$a_81_1 = {24 66 33 31 39 39 33 63 64 2d 64 37 39 63 2d 34 66 66 39 2d 38 39 38 64 2d 61 62 62 39 39 61 61 33 66 30 63 32 } //05 00 
		$a_81_2 = {24 36 34 62 32 33 39 36 31 2d 63 65 64 37 2d 34 38 65 65 2d 61 36 34 33 2d 39 61 62 33 35 61 36 35 35 65 65 33 } //05 00 
		$a_81_3 = {24 45 43 33 34 34 46 46 42 2d 34 35 31 36 2d 34 35 30 44 2d 42 46 37 34 2d 36 37 44 39 41 36 30 33 33 38 31 31 } //01 00 
		$a_81_4 = {57 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 57 } //01 00 
		$a_81_5 = {58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 } //00 00 
	condition:
		any of ($a_*)
 
}