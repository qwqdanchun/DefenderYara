
rule Trojan_Win64_Bampeass_C{
	meta:
		description = "Trojan:Win64/Bampeass.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 75 63 6d 4c 6f 61 64 43 61 6c 6c 62 61 63 6b 2c 20 64 6c 6c 20 6c 6f 61 64 20 25 77 73 2c 20 44 6c 6c 42 61 73 65 20 3d 20 25 70 0a 0d 00 } //01 00 
		$a_01_1 = {00 55 41 43 4d 65 20 69 6e 6a 65 63 74 65 64 2c 20 48 69 62 69 6b 69 20 61 74 20 79 6f 75 72 20 73 65 72 76 69 63 65 2e 00 } //01 00 
		$a_01_2 = {00 75 63 6d 4c 6f 61 64 43 61 6c 6c 62 61 63 6b 2c 20 6b 65 72 6e 65 6c 33 32 20 62 61 73 65 20 66 6f 75 6e 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}