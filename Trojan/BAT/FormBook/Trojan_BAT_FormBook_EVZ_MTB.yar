
rule Trojan_BAT_FormBook_EVZ_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EVZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {c0 8c c8 8c 65 77 cf 30 cc 28 0c b8 80 08 88 b8 2b ea b0 28 a0 08 82 42 81 0d 6e 93 19 77 71 25 6a 34 0b 1a 4d 40 a3 } //01 00 
		$a_01_1 = {6d 6b cf 71 56 9c b3 74 75 db e9 4b d7 ac 71 d6 b7 9d 76 46 db 39 1b d6 b4 ad 5c d3 36 f3 98 13 da 56 3b cb ce e8 4a a7 cd f1 22 8d 63 67 49 d2 } //01 00 
		$a_01_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00 
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_EVZ_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.EVZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 4c 6f 6e 67 50 61 74 68 44 69 72 65 63 74 6f 72 79 00 } //01 00 
		$a_01_1 = {00 53 74 72 69 6e 67 54 79 70 65 49 6e 66 6f 00 } //01 00 
		$a_01_2 = {00 49 6e 70 75 74 42 6c 6f 63 6b 53 69 7a 65 00 } //01 00 
		$a_01_3 = {00 45 73 63 61 70 65 64 49 52 65 6d 6f 74 69 6e 67 46 6f 72 6d 61 74 74 65 72 00 } //01 00 
		$a_01_4 = {00 78 31 30 00 70 72 6f 6a 65 63 74 6e 61 6d 65 00 } //01 00 
		$a_01_5 = {00 4c 6f 77 65 73 74 42 72 65 61 6b 49 74 65 72 61 74 69 6f 6e 00 } //01 00 
		$a_01_6 = {00 43 6c 6f 6e 65 48 65 6c 70 65 72 2e 64 6c 6c 00 } //01 00 
		$a_01_7 = {00 44 61 74 61 4d 69 73 61 6c 69 67 6e 65 64 00 } //01 00 
		$a_01_8 = {00 44 69 72 65 63 74 6f 72 79 49 6e 66 6f 00 } //01 00 
		$a_01_9 = {00 45 6e 75 6d 43 61 74 65 67 6f 72 69 65 73 46 6c 61 67 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}