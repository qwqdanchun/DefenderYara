
rule Trojan_BAT_Injector_W{
	meta:
		description = "Trojan:BAT/Injector.W,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 25 0d 2c 05 09 8e 69 2d 05 16 e0 0a 2b 08 09 16 8f 90 01 01 00 00 01 0a 28 90 01 01 00 00 06 25 13 04 2c 06 11 04 8e 69 2d 05 16 e0 0b 2b 09 11 04 16 8f 90 01 01 00 00 01 0b 16 0c 2b 1d 06 d3 08 58 06 d3 08 58 47 07 d3 08 28 90 01 01 00 00 06 8e 69 5d 58 47 61 d2 52 08 17 58 0c 08 02 8e 69 32 dd 16 e0 0a 16 e0 0b 2a 90 00 } //01 00 
		$a_03_1 = {06 19 5a 19 33 17 02 7b 03 00 00 04 74 90 01 01 00 00 01 6f 90 01 01 00 00 0a 06 9a 28 90 01 01 00 00 06 06 17 58 0a 06 18 32 90 00 } //01 00 
		$a_03_2 = {13 04 16 13 05 2b 5c 11 04 11 05 9a 0c 08 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 1e 33 42 08 6f 90 01 01 00 00 0a 8e 69 17 33 37 08 6f 90 01 01 00 00 0a 16 9a 6f 90 01 01 00 00 0a d0 90 01 01 00 00 01 28 90 01 01 00 00 0a 33 1e 08 07 17 8d 01 00 00 01 13 06 11 06 16 03 a2 11 06 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}