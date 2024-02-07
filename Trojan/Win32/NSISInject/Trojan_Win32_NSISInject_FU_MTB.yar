
rule Trojan_Win32_NSISInject_FU_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 68 00 65 00 72 00 6d 00 6f 00 64 00 79 00 6e 00 61 00 6d 00 69 00 63 00 69 00 61 00 6e 00 20 00 44 00 69 00 73 00 71 00 75 00 69 00 65 00 74 00 69 00 6e 00 67 00 6c 00 79 00 20 00 46 00 6f 00 72 00 6e 00 61 00 65 00 67 00 74 00 65 00 72 00 } //01 00  Thermodynamician Disquietingly Fornaegter
		$a_01_1 = {44 00 72 00 75 00 67 00 67 00 69 00 65 00 73 00 74 00 20 00 53 00 70 00 65 00 63 00 69 00 61 00 6c 00 6f 00 6d 00 72 00 61 00 61 00 64 00 65 00 72 00 6e 00 65 00 73 00 20 00 42 00 75 00 6d 00 73 00 65 00 74 00 73 00 } //01 00  Druggiest Specialomraadernes Bumsets
		$a_01_2 = {52 00 69 00 74 00 6f 00 72 00 6e 00 65 00 6c 00 20 00 4f 00 75 00 74 00 63 00 61 00 73 00 74 00 } //01 00  Ritornel Outcast
		$a_01_3 = {53 00 76 00 61 00 6e 00 65 00 73 00 65 00 6e 00 20 00 50 00 61 00 61 00 6c 00 61 00 67 00 74 00 65 00 20 00 4b 00 69 00 6d 00 6f 00 6e 00 6f 00 } //01 00  Svanesen Paalagte Kimono
		$a_01_4 = {75 6e 6b 6e 6f 77 6e 64 6c 6c 2e 70 64 62 } //01 00  unknowndll.pdb
		$a_01_5 = {47 00 72 00 61 00 64 00 79 00 } //00 00  Grady
	condition:
		any of ($a_*)
 
}