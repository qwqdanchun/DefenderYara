
rule Trojan_BAT_Perseus_XA_MTB{
	meta:
		description = "Trojan:BAT/Perseus.XA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,40 00 3f 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_00_1 = {44 65 63 6f 6d 70 72 65 73 73 47 5a 69 70 } //01 00  DecompressGZip
		$a_00_2 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //14 00  ConfusedByAttribute
		$a_03_3 = {63 6f 73 74 75 72 61 2e 90 02 08 2e 64 6c 6c 2e 64 6c 6c 2e 7a 69 70 90 00 } //14 00 
		$a_03_4 = {63 6f 73 74 75 72 61 2e 90 02 08 2e 64 6c 6c 2e 70 64 62 2e 7a 69 70 90 00 } //14 00 
		$a_00_5 = {57 61 76 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Waves.Resources.resources
		$a_00_6 = {74 6f 74 6f } //01 00  toto
		$a_00_7 = {57 61 76 65 73 2e 70 64 62 } //00 00  Waves.pdb
		$a_00_8 = {5d 04 00 00 9b 58 04 80 5c 26 00 00 9c 58 04 80 00 00 01 00 08 00 10 00 af 01 50 65 72 73 65 75 73 2e 58 42 21 4d 54 42 00 00 01 40 05 82 70 00 04 00 78 ac 00 00 05 00 05 00 06 00 } //00 01 
	condition:
		any of ($a_*)
 
}