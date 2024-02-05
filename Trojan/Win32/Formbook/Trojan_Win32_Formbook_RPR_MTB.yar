
rule Trojan_Win32_Formbook_RPR_MTB{
	meta:
		description = "Trojan:Win32/Formbook.RPR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 10 8a 04 37 90 03 01 06 04 90 03 01 01 34 2c 90 01 01 90 03 01 06 04 90 03 01 01 34 2c 90 01 01 90 03 01 06 04 90 03 01 01 34 2c 90 01 01 90 03 01 06 04 90 03 01 01 34 2c 90 01 01 90 03 01 06 04 90 03 01 01 34 2c 90 02 20 88 04 37 46 3b f3 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Formbook_RPR_MTB_2{
	meta:
		description = "Trojan:Win32/Formbook.RPR!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 50 46 30 0d 54 5f 5f 31 37 33 30 34 31 35 32 39 36 0d 54 5f 5f 31 37 33 30 33 38 37 30 37 39 04 4c 65 66 74 02 00 03 54 6f 70 02 00 0b 42 6f 72 64 65 72 53 74 79 6c 65 07 08 62 73 44 69 61 } //01 00 
		$a_01_1 = {54 50 46 30 06 54 46 6f 72 6d 31 05 46 6f 72 6d 31 04 4c 65 66 74 03 f4 00 03 54 6f 70 02 7c 07 43 61 70 74 69 6f 6e 06 0a 41 73 79 6e 63 20 44 65 6d 6f 0c 43 6c 69 65 6e 74 48 65 69 67 68 74 03 59 02 0b 43 6c 69 65 6e 74 57 69 64 74 68 03 9e 03 05 43 6f 6c 6f 72 07 09 63 6c 42 74 6e 46 } //01 00 
		$a_01_2 = {54 50 46 30 06 54 46 6f 72 6d 38 05 46 6f 72 6d 38 04 4c 65 66 74 03 ce 00 03 54 6f 70 03 a3 00 0b 42 6f 72 64 65 72 53 74 79 6c 65 07 08 62 73 44 69 61 6c 6f 67 0c 43 6c 69 65 6e 74 48 65 69 } //00 00 
	condition:
		any of ($a_*)
 
}