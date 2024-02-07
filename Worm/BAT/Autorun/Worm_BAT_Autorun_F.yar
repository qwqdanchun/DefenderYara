
rule Worm_BAT_Autorun_F{
	meta:
		description = "Worm:BAT/Autorun.F,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 66 69 6c 65 5f 6e 61 6d 65 00 75 73 62 5f 63 6f 70 79 00 } //01 00 
		$a_01_1 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00  [AutoRun]
		$a_01_2 = {61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 4f 00 75 00 76 00 72 00 69 00 72 00 20 00 6c 00 65 00 20 00 64 00 6f 00 73 00 73 00 69 00 65 00 72 00 20 00 70 00 6f 00 75 00 72 00 20 00 61 00 66 00 66 00 69 00 63 00 68 00 65 00 72 00 20 00 6c 00 65 00 73 00 20 00 66 00 69 00 63 00 68 00 69 00 65 00 72 00 73 00 } //00 00  action=Ouvrir le dossier pour afficher les fichiers
	condition:
		any of ($a_*)
 
}