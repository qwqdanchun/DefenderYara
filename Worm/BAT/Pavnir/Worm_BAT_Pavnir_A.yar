
rule Worm_BAT_Pavnir_A{
	meta:
		description = "Worm:BAT/Pavnir.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 00 73 00 6e 00 72 00 2e 00 74 00 78 00 74 00 90 01 02 73 00 6e 00 72 00 2e 00 74 00 78 00 74 00 90 00 } //01 00 
		$a_03_1 = {6c 00 69 00 73 00 74 00 70 00 68 00 72 00 61 00 73 00 65 00 2e 00 74 00 78 00 74 00 90 01 02 5c 00 6c 00 69 00 73 00 74 00 70 00 68 00 72 00 61 00 73 00 65 00 2e 00 74 00 78 00 74 00 90 00 } //01 00 
		$a_03_2 = {5c 00 52 00 75 00 6e 00 90 01 02 6d 00 73 00 63 00 65 00 49 00 6e 00 74 00 65 00 72 00 90 01 02 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_3 = {5c 00 6d 00 79 00 20 00 6d 00 61 00 69 00 6c 00 20 00 66 00 69 00 6c 00 65 00 5c 00 66 00 73 00 74 00 61 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_4 = {2f 00 66 00 69 00 6c 00 65 00 73 00 65 00 6e 00 64 00 2f 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 5d 
	condition:
		any of ($a_*)
 
}