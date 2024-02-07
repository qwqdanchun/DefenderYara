
rule Trojan_BAT_njRAT_MBBE_MTB{
	meta:
		description = "Trojan:BAT/njRAT.MBBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 53 00 53 00 78 00 35 00 53 00 4e 00 4e 00 31 00 56 00 33 00 56 00 56 00 78 00 34 00 50 00 68 00 77 00 49 00 65 00 75 00 2f 00 62 00 42 00 4e 00 64 00 49 00 54 00 38 00 6e 00 } //01 00  DSSx5SNN1V3VVx4PhwIeu/bBNdIT8n
		$a_01_1 = {42 00 6f 00 72 00 63 00 39 00 72 00 69 00 4e 00 71 00 54 00 76 00 4f 00 30 00 30 00 2b 00 57 00 42 00 39 00 4d 00 48 00 46 00 56 00 } //00 00  Borc9riNqTvO00+WB9MHFV
	condition:
		any of ($a_*)
 
}