
rule Ransom_Win32_Tescrypt_MTB{
	meta:
		description = "Ransom:Win32/Tescrypt!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 79 35 34 79 55 57 39 38 4d 33 34 35 4d 46 39 36 37 } //01 00 
		$a_01_1 = {45 42 33 52 34 6e 30 38 6f 49 70 35 75 } //01 00 
		$a_01_2 = {75 35 37 61 39 36 37 39 6f 34 36 34 70 39 } //01 00 
		$a_01_3 = {4d 41 37 68 35 49 63 37 33 50 56 38 39 } //00 00 
	condition:
		any of ($a_*)
 
}