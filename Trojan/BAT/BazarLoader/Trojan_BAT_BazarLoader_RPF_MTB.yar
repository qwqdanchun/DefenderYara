
rule Trojan_BAT_BazarLoader_RPF_MTB{
	meta:
		description = "Trojan:BAT/BazarLoader.RPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 66 00 66 00 69 00 63 00 68 00 61 00 67 00 65 00 } //01 00  Affichage
		$a_01_1 = {71 00 75 00 69 00 74 00 74 00 65 00 72 00 54 00 6f 00 6f 00 6c 00 53 00 74 00 72 00 69 00 70 00 4d 00 65 00 6e 00 75 00 49 00 74 00 65 00 6d 00 } //01 00  quitterToolStripMenuItem
		$a_01_2 = {73 00 63 00 69 00 65 00 6e 00 74 00 69 00 66 00 69 00 71 00 75 00 65 00 54 00 6f 00 6f 00 6c 00 53 00 74 00 72 00 69 00 70 00 4d 00 65 00 6e 00 75 00 49 00 74 00 65 00 6d 00 } //01 00  scientifiqueToolStripMenuItem
		$a_01_3 = {61 00 69 00 64 00 65 00 54 00 6f 00 6f 00 6c 00 53 00 74 00 72 00 69 00 70 00 4d 00 65 00 6e 00 75 00 49 00 74 00 65 00 6d 00 } //01 00  aideToolStripMenuItem
		$a_01_4 = {52 00 61 00 7a 00 65 00 72 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 } //01 00  RazerInstaller
		$a_01_5 = {43 00 61 00 6c 00 63 00 75 00 6c 00 61 00 74 00 72 00 69 00 63 00 65 00 } //01 00  Calculatrice
		$a_01_6 = {43 00 72 00 65 00 61 00 74 00 65 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}