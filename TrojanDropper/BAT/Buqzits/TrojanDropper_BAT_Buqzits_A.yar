
rule TrojanDropper_BAT_Buqzits_A{
	meta:
		description = "TrojanDropper:BAT/Buqzits.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {2c 09 1e 0c 28 90 01 04 2b 03 1f 0a 0c 1f 0c 0c 02 7b 90 01 04 1a 9a 28 90 01 04 2c 0b 1f 0d 90 00 } //01 00 
		$a_01_1 = {69 64 00 4b 61 73 70 65 72 6b 79 00 56 50 43 00 56 4d 57 61 72 65 00 53 61 6e 64 62 6f 78 69 65 00 48 69 4a 61 63 6b 54 68 69 73 00 67 65 74 44 65 76 69 63 65 73 00 52 43 34 00 } //01 00 
		$a_00_2 = {46 00 55 00 43 00 4b 00 40 00 49 00 40 00 4f 00 57 00 4e 00 40 00 54 00 48 00 49 00 53 00 40 00 53 00 48 00 49 00 5a 00 21 00 40 00 } //00 00  FUCK@I@OWN@THIS@SHIZ!@
	condition:
		any of ($a_*)
 
}