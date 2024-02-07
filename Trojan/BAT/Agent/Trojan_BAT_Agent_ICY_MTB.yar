
rule Trojan_BAT_Agent_ICY_MTB{
	meta:
		description = "Trojan:BAT/Agent.ICY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 1f 10 8d 44 00 00 01 0a 03 28 20 00 00 0a 0b 28 21 00 00 0a 0c 00 08 28 22 00 00 0a 02 6f 23 00 00 0a 6f 24 00 00 0a 00 08 06 6f 25 00 00 0a 00 08 08 6f 26 00 00 0a 08 6f 27 00 00 0a 6f 28 00 00 0a 0d 07 73 29 00 00 0a 13 04 00 11 04 09 16 73 2a 00 00 0a 13 05 00 11 05 73 2b 00 00 0a 13 06 00 11 06 6f 2c 00 00 0a 13 07 de 32 11 06 2c 08 11 06 6f 2d 00 00 0a 00 dc } //01 00 
		$a_81_1 = {64 30 31 37 39 63 36 64 61 35 32 32 30 39 39 38 32 63 34 33 38 33 65 30 } //01 00  d0179c6da52209982c4383e0
		$a_81_2 = {53 79 6c 76 61 6e } //00 00  Sylvan
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Agent_ICY_MTB_2{
	meta:
		description = "Trojan:BAT/Agent.ICY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {00 00 01 0b 00 06 19 17 73 90 01 01 00 00 0a 0c 00 08 6f 90 01 01 00 00 0a 69 0d 09 8d 90 01 01 00 00 01 0b 16 13 05 2b 07 11 05 11 04 58 13 05 08 07 11 05 09 11 05 59 6f 90 01 01 00 00 0a 25 13 04 16 fe 02 13 06 11 06 2d e0 00 de 0a 00 08 6f 90 01 01 00 00 0a 00 00 dc 00 de 05 26 00 00 de 00 07 13 07 2b 00 11 07 2a 90 00 } //01 00 
		$a_81_1 = {44 4e 42 5f 63 6c 69 65 6e 74 2e 65 78 65 } //01 00  DNB_client.exe
		$a_81_2 = {69 67 78 36 34 2e 65 78 65 } //01 00  igx64.exe
		$a_81_3 = {6b 6f 6f 6b 6f 6c } //01 00  kookol
		$a_81_4 = {73 63 6f 6e 74 } //01 00  scont
		$a_00_5 = {63 72 70 74 20 32 2e 30 5c 63 72 70 74 20 32 2e 30 5c 62 69 6e 5c 44 65 62 75 67 5c 4c 54 5c 6c 69 70 72 75 73 5f 70 72 6f 64 5c 6f 62 6a 5c 44 65 62 75 67 } //01 00  crpt 2.0\crpt 2.0\bin\Debug\LT\liprus_prod\obj\Debug
		$a_81_6 = {44 6f 77 6e 6c 6f 61 64 20 73 75 63 63 65 73 73 66 75 6c } //00 00  Download successful
	condition:
		any of ($a_*)
 
}