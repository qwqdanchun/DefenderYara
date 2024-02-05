
rule Trojan_BAT_Bingoml_MA_MTB{
	meta:
		description = "Trojan:BAT/Bingoml.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {09 07 06 6f 20 00 00 0a 69 6f 21 00 00 0a 6f 22 00 00 0a de 28 09 2c 06 09 6f 23 00 00 0a dc } //02 00 
		$a_01_1 = {2f 00 43 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 75 00 62 00 6c 00 69 00 63 00 5c 00 53 00 79 00 73 00 49 00 6e 00 69 00 74 00 56 00 61 00 6c 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_2 = {73 74 61 72 74 70 72 6f 63 } //02 00 
		$a_01_3 = {63 63 36 34 38 37 31 34 2d 65 30 34 66 2d 34 64 38 33 2d 38 61 31 34 2d 65 64 37 65 32 62 36 32 37 38 30 39 } //02 00 
		$a_01_4 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}