
rule Ransom_Win32_Dopplepaymer_gen_D{
	meta:
		description = "Ransom:Win32/Dopplepaymer.gen!D,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {7e 00 31 00 3a 00 } //01 00 
		$a_00_1 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 } //01 00 
		$a_00_2 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 } //ff ff 
		$a_01_3 = {2a 2a 2a 5f 5f 63 38 61 31 30 62 34 63 2d 30 32 39 38 2d 34 61 32 31 2d 39 64 63 31 2d 34 61 38 34 33 61 33 38 65 34 62 34 5f 5f 2a 2a 2a } //00 00 
	condition:
		any of ($a_*)
 
}