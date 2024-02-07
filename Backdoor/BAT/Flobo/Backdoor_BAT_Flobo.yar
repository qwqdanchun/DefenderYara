
rule Backdoor_BAT_Flobo{
	meta:
		description = "Backdoor:BAT/Flobo,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 6c 00 6f 00 6f 00 64 00 20 00 41 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 41 00 63 00 74 00 69 00 76 00 65 00 } //01 00  Flood Already Active
		$a_01_1 = {3a 00 5a 00 4f 00 4e 00 45 00 2e 00 69 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //01 00  :ZONE.identifier
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //01 00  Software\Microsoft\Protected Storage System Provider
		$a_03_3 = {1f 1d 12 00 1a 28 90 01 01 00 00 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}