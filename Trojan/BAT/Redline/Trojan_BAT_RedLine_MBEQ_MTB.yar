
rule Trojan_BAT_RedLine_MBEQ_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MBEQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 00 33 00 2d 00 30 00 30 00 2d 00 45 00 32 00 2d 00 30 00 30 00 2d 00 30 00 33 00 2d 00 30 00 30 00 2d 00 45 00 32 00 2d 00 30 00 30 00 2d 00 30 00 33 00 2d 00 30 00 30 00 2d 00 45 00 32 00 2d 00 30 00 30 00 2d 00 30 00 33 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 45 00 36 00 } //01 00 
		$a_01_1 = {39 00 34 00 2d 00 34 00 30 00 2d 00 34 00 41 00 2d 00 30 00 30 00 2d 00 36 00 30 00 2d 00 30 00 30 00 2d 00 39 00 35 00 2d 00 34 00 30 00 2d 00 31 00 38 00 2d 00 30 00 30 00 2d 00 36 00 30 00 2d 00 34 00 30 00 2d 00 32 00 36 00 2d 00 34 00 30 00 2d 00 42 00 35 00 } //01 00 
		$a_01_2 = {45 00 36 00 2d 00 30 00 30 00 2d 00 39 00 34 00 2d 00 30 00 30 00 2d 00 35 00 36 00 2d 00 30 00 30 00 2d 00 43 00 36 00 2d 00 30 00 30 00 2d 00 39 00 36 00 2d 00 30 00 30 00 2d 00 36 00 34 00 2d 00 30 00 30 00 2d 00 32 00 37 00 2d 00 30 00 30 00 2d 00 31 00 36 00 2d 00 30 00 30 00 2d 00 36 00 35 00 2d 00 30 00 30 00 2d 00 31 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 34 00 34 } //01 00 
		$a_01_3 = {33 00 36 00 2d 00 33 00 37 00 2d 00 44 00 36 00 2d 00 30 00 30 00 2d 00 45 00 36 00 2d 00 39 00 36 00 2d 00 31 00 36 00 2d 00 44 00 34 00 2d 00 43 00 36 00 2d 00 43 00 36 00 2d 00 34 00 34 00 2d 00 32 00 37 00 2d 00 46 00 36 00 } //01 00 
		$a_01_4 = {4c 00 6f 00 61 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}