
rule Trojan_BAT_Injector_SQ_bit{
	meta:
		description = "Trojan:BAT/Injector.SQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 6d 00 20 00 68 00 61 00 6c 00 74 00 65 00 64 00 } //01 00  System halted
		$a_01_1 = {56 65 72 69 66 69 63 61 74 6f 72 00 62 6c 75 72 00 62 00 } //01 00 
		$a_01_2 = {45 00 78 00 69 00 73 00 74 00 73 00 20 00 69 00 6e 00 20 00 74 00 68 00 65 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 20 00 64 00 69 00 72 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Exists in the current dir of the system
		$a_01_3 = {07 91 06 61 d2 9c 07 17 58 0b } //00 00 
	condition:
		any of ($a_*)
 
}