
rule Backdoor_BAT_RevengeRat_GG_MTB{
	meta:
		description = "Backdoor:BAT/RevengeRat.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {5c 00 52 00 65 00 76 00 65 00 6e 00 67 00 65 00 2d 00 52 00 41 00 54 00 90 02 32 5c 00 4e 00 75 00 63 00 6c 00 65 00 61 00 72 00 20 00 45 00 78 00 70 00 6c 00 6f 00 73 00 69 00 6f 00 6e 00 5c 00 4e 00 75 00 63 00 6c 00 65 00 61 00 72 00 20 00 45 00 78 00 70 00 6c 00 6f 00 73 00 69 00 6f 00 6e 00 5c 00 6f 00 62 00 6a 00 5c 00 44 00 65 00 62 00 75 00 67 00 5c 00 90 02 14 2e 00 70 00 64 00 62 00 90 00 } //01 00 
		$a_02_1 = {5c 52 65 76 65 6e 67 65 2d 52 41 54 90 02 32 5c 4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e 5c 4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e 5c 6f 62 6a 5c 44 65 62 75 67 5c 90 02 14 2e 70 64 62 90 00 } //01 00 
		$a_80_2 = {5c 4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e 5c 4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e 5c 6f 62 6a 5c 44 65 62 75 67 5c 4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e 2e 70 64 62 } //\Nuclear Explosion\Nuclear Explosion\obj\Debug\Nuclear Explosion.pdb  00 00 
	condition:
		any of ($a_*)
 
}