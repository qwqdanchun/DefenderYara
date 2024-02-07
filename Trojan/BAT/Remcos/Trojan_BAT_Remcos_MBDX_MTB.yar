
rule Trojan_BAT_Remcos_MBDX_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBDX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 5f 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 5f 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 5f 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //01 00  Syste_m.Refl_ection.As_sembly
		$a_01_1 = {47 00 65 00 5f 00 74 00 45 00 78 00 70 00 5f 00 6f 00 72 00 74 00 65 00 64 00 54 00 79 00 5f 00 70 00 65 00 73 00 } //01 00  Ge_tExp_ortedTy_pes
		$a_01_2 = {53 00 79 00 5f 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 5f 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 5f 00 6d 00 62 00 6c 00 79 00 } //01 00  Sy_stem.Refl_ection.Asse_mbly
		$a_01_3 = {53 00 73 00 75 00 61 00 75 00 61 00 64 00 67 00 64 00 69 00 79 00 64 00 76 00 69 00 64 00 73 00 68 00 76 00 7a 00 73 00 64 00 79 00 6b 00 62 00 } //00 00  Ssuauadgdiydvidshvzsdykb
	condition:
		any of ($a_*)
 
}