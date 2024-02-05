
rule Backdoor_BAT_Hotacol_A{
	meta:
		description = "Backdoor:BAT/Hotacol.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 00 69 00 6e 00 67 00 90 01 02 43 00 6c 00 6f 00 73 00 65 00 90 01 02 52 00 65 00 73 00 74 00 61 00 72 00 74 00 90 00 } //01 00 
		$a_03_1 = {73 00 65 00 6e 00 64 00 66 00 69 00 6c 00 65 00 90 01 02 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 01 02 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 00 } //01 00 
		$a_03_2 = {46 00 69 00 6c 00 65 00 6d 00 61 00 6e 00 67 00 61 00 72 00 90 01 02 67 00 65 00 74 00 64 00 72 00 65 00 76 00 69 00 72 00 90 00 } //01 00 
		$a_03_3 = {67 00 65 00 74 00 61 00 6c 00 6c 00 90 01 02 6a 00 70 00 67 00 90 01 02 6a 00 70 00 67 00 32 00 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}