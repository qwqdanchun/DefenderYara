
rule Ransom_AndroidOS_Coravin_A_ex{
	meta:
		description = "Ransom:AndroidOS/Coravin.A!ex,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {33 72 64 20 70 61 73 73 00 0a 34 38 36 35 30 38 90 } //01 00 
		$a_01_1 = {09 76 65 72 69 66 79 50 69 6e 00 0a 76 65 72 69 66 79 5f 70 69 6e 00 } //01 00 
		$a_01_2 = {17 42 6c 6f 63 6b 65 64 41 70 70 41 63 74 69 76 69 74 79 2e 6a 61 76 61 00 11 42 6c 6f 63 6b 69 6e 67 20 6f 6e 20 6c 6f 63 6b } //01 00 
		$a_00_3 = {43 6f 6e 67 72 61 74 73 2e 20 59 6f 75 20 50 68 6f 6e 65 20 69 73 20 44 65 63 72 79 70 74 65 64 00 } //01 00 
		$a_00_4 = {44 65 63 72 79 70 74 69 6f 6e 20 43 6f 64 65 20 69 73 20 49 6e 63 6f 72 } //00 00  Decryption Code is Incor
	condition:
		any of ($a_*)
 
}