
rule Trojan_BAT_FormBook_EXB_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EXB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 31 33 65 62 37 65 66 36 2d 64 62 31 30 2d 34 35 32 65 2d 38 34 37 31 2d 36 39 65 37 63 61 32 65 65 65 31 35 } //01 00  $13eb7ef6-db10-452e-8471-69e7ca2eee15
		$a_01_1 = {00 75 67 7a 31 00 75 67 7a 33 00 70 72 6f 6a 6e 61 6d 65 00 } //01 00  甀穧1杵㍺瀀潲湪浡e
		$a_01_2 = {00 66 67 68 00 70 72 6f 6a 44 61 74 61 00 4b 31 00 } //01 00 
		$a_01_3 = {00 78 79 7a 00 78 31 30 00 70 72 6f 6a 65 63 74 6e 61 6d 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}