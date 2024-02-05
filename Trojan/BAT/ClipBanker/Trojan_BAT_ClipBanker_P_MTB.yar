
rule Trojan_BAT_ClipBanker_P_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.P!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {2b 38 08 6f 90 01 01 00 00 0a 02 7b 90 01 01 00 00 04 09 9a 6f 90 01 01 00 00 0a 28 90 01 01 00 00 06 08 6f 90 01 01 00 00 0a 02 7b 90 01 01 00 00 04 06 9a 6f 90 01 01 00 00 0a 28 90 01 01 00 00 06 31 02 09 0a 09 17 58 0d 09 02 7b 90 01 01 00 00 04 8e 69 32 bd 02 7b 90 01 01 00 00 04 06 9a 28 90 01 01 00 00 0a 02 7b 90 00 } //01 00 
		$a_01_1 = {5b 00 61 00 2d 00 7a 00 41 00 2d 00 5a 00 31 00 2d 00 39 00 5d 00 7b 00 32 00 37 00 2c 00 33 00 35 00 7d 00 24 00 } //01 00 
		$a_01_2 = {5b 00 61 00 2d 00 7a 00 41 00 2d 00 5a 00 31 00 2d 00 39 00 5d 00 7b 00 34 00 32 00 7d 00 24 00 } //00 00 
	condition:
		any of ($a_*)
 
}