
rule Trojan_BAT_SpyFront_A_MSR{
	meta:
		description = "Trojan:BAT/SpyFront.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 09 00 00 05 00 "
		
	strings :
		$a_00_0 = {6a 00 6f 00 6d 00 61 00 63 00 6f 00 71 00 75 00 69 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //05 00 
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 63 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 42 00 6f 00 6f 00 6b 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_3 = {52 00 65 00 76 00 65 00 6e 00 67 00 65 00 40 00 32 00 2e 00 30 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_4 = {53 65 6e 64 42 6c 61 73 74 65 72 } //01 00 
		$a_00_5 = {52 65 76 65 6e 67 65 40 32 2e 30 2e 70 64 62 } //01 00 
		$a_00_6 = {53 00 63 00 72 00 65 00 65 00 6e 00 42 00 6f 00 6f 00 6b 00 69 00 6e 00 67 00 46 00 49 00 4e 00 41 00 4c 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_00_7 = {63 61 70 74 75 72 61 54 65 6c 61 2e 4d 79 } //0a 00 
		$a_02_8 = {0c 17 0d 72 90 01 04 13 04 02 28 90 01 04 13 05 17 13 06 2b 49 09 08 fe 01 13 07 11 07 2c 02 17 0d 03 09 17 28 2f 00 00 0a 28 30 00 00 0a 0b 11 04 02 11 06 17 28 2f 00 00 0a 28 30 00 00 0a 07 08 d8 da 28 31 00 00 0a 28 32 00 00 0a 28 33 00 00 0a 13 04 09 17 d6 0d 11 06 17 d6 13 06 11 06 11 05 31 b1 28 34 00 00 0a 11 04 28 90 01 04 16 11 04 6f 90 01 04 6f 90 01 04 0a 2b 00 06 2a 90 00 } //00 00 
		$a_00_9 = {5d 04 00 00 0c ff } //03 80 
	condition:
		any of ($a_*)
 
}