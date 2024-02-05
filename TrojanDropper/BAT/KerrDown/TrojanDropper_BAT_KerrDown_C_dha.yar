
rule TrojanDropper_BAT_KerrDown_C_dha{
	meta:
		description = "TrojanDropper:BAT/KerrDown.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {46 34 30 42 31 33 30 44 2d 32 45 30 38 2d 34 44 31 33 2d 42 44 30 45 2d 37 45 44 31 36 32 36 34 43 31 30 31 } //02 00 
		$a_01_1 = {73 68 65 6c 6c 5f 77 33 32 2e 64 6c 6c } //01 00 
		$a_01_2 = {43 6f 6d 70 6f 6d 65 6e 74 65 64 } //01 00 
		$a_01_3 = {72 65 67 73 76 63 73 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}