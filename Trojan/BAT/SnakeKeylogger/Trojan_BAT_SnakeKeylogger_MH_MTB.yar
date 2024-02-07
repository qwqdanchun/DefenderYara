
rule Trojan_BAT_SnakeKeylogger_MH_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 05 11 05 72 af a0 18 70 72 c1 a0 18 70 28 90 01 03 06 13 06 18 8d 05 00 00 01 13 07 11 07 16 72 d3 a0 18 70 a2 11 07 17 11 06 28 90 01 03 0a a2 11 07 13 08 08 90 00 } //0a 00 
		$a_03_1 = {13 05 11 05 72 ef f5 18 70 72 01 f6 18 70 28 90 01 03 06 13 06 18 8d 05 00 00 01 13 07 11 07 16 72 13 f6 18 70 a2 11 07 17 11 06 28 90 01 03 0a a2 11 07 13 08 08 90 00 } //02 00 
		$a_01_2 = {47 00 6f 00 74 00 69 00 63 00 32 00 2e 00 47 00 6f 00 74 00 69 00 63 00 32 00 } //02 00  Gotic2.Gotic2
		$a_01_3 = {54 00 54 00 52 00 44 00 5a 00 42 00 57 00 49 00 69 00 6d 00 6a 00 4a 00 5a 00 72 00 47 00 } //01 00  TTRDZBWIimjJZrG
		$a_01_4 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  FlushFinalBlock
	condition:
		any of ($a_*)
 
}