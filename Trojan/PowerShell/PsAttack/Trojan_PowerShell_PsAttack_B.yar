
rule Trojan_PowerShell_PsAttack_B{
	meta:
		description = "Trojan:PowerShell/PsAttack.B,SIGNATURE_TYPE_CMDHSTR_EXT,14 00 14 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {79 00 71 00 62 00 74 00 61 00 68 00 6d 00 61 00 61 00 71 00 62 00 6a 00 61 00 67 00 34 00 61 00 61 00 71 00 62 00 30 00 61 00 65 00 79 00 61 00 79 00 71 00 62 00 70 00 61 00 67 00 77 00 61 00 7a 00 71 00 62 00 6b 00 61 00 61 00 } //0a 00  yqbtahmaaqbjag4aaqb0aeyayqbpagwazqbkaa
		$a_00_1 = {6e 00 6f 00 6e 00 70 00 75 00 62 00 6c 00 69 00 63 00 2c 00 73 00 74 00 61 00 74 00 69 00 63 00 } //0a 00  nonpublic,static
		$a_00_2 = {73 00 65 00 74 00 76 00 61 00 6c 00 75 00 65 00 28 00 24 00 6e 00 75 00 6c 00 6c 00 2c 00 24 00 74 00 72 00 75 00 65 00 29 00 } //0a 00  setvalue($null,$true)
		$a_00_3 = {5b 00 72 00 65 00 66 00 5d 00 2e 00 61 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 2e 00 67 00 65 00 74 00 74 00 79 00 70 00 65 00 } //00 00  [ref].assembly.gettype
	condition:
		any of ($a_*)
 
}