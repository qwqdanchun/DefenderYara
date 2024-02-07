
rule Trojan_BAT_Kryptik_YAUD_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.YAUD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 41 34 33 46 45 30 44 2d 42 34 41 31 2d 34 46 34 38 2d 41 44 31 35 2d 31 42 39 45 45 33 46 41 42 46 39 34 } //01 00  DA43FE0D-B4A1-4F48-AD15-1B9EE3FABF94
		$a_01_1 = {45 58 30 30 30 30 31 } //01 00  EX00001
		$a_01_2 = {45 58 30 30 30 30 32 } //01 00  EX00002
		$a_01_3 = {45 58 30 30 30 30 33 } //01 00  EX00003
		$a_01_4 = {45 58 30 30 30 30 36 } //01 00  EX00006
		$a_01_5 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_6 = {54 6f 57 69 6e 33 32 } //01 00  ToWin32
		$a_01_7 = {00 4c 65 76 65 6c 00 } //01 00 
		$a_01_8 = {00 78 73 61 00 } //00 00 
	condition:
		any of ($a_*)
 
}