
rule Worm_BAT_ScodBot_A{
	meta:
		description = "Worm:BAT/ScodBot.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {4b 69 6c 6c 57 69 6e 64 6f 77 73 53 65 63 75 72 69 74 79 43 65 6e 74 65 72 41 6e 64 46 69 72 65 57 61 6c 6c 00 } //02 00 
		$a_01_1 = {55 53 42 53 70 72 65 61 64 00 } //01 00  单卂牰慥d
		$a_01_2 = {42 6f 74 49 44 00 } //01 00  潂䥴D
		$a_01_3 = {44 6f 52 6f 6f 74 6b 69 74 00 } //01 00  潄潒瑯楫t
		$a_01_4 = {67 65 6e 65 72 61 74 65 69 70 73 61 6e 64 73 68 69 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}