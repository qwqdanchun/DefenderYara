
rule Trojan_BAT_BHO_B{
	meta:
		description = "Trojan:BAT/BHO.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {38 02 00 00 00 26 16 00 7e 90 01 01 00 00 0a 7e 90 01 01 00 00 04 17 6f 90 01 01 00 00 0a 0a 06 14 fe 01 16 90 00 } //01 00 
		$a_00_1 = {42 48 4f 4b 45 59 4e 41 4d 45 } //01 00  BHOKEYNAME
		$a_00_2 = {52 65 67 69 73 74 65 72 42 48 4f } //01 00  RegisterBHO
		$a_00_3 = {52 61 6d 61 20 4b 72 69 73 68 6e 61 } //01 00  Rama Krishna
		$a_00_4 = {41 00 75 00 74 00 6f 00 6d 00 61 00 74 00 69 00 63 00 61 00 6c 00 6c 00 79 00 20 00 61 00 64 00 64 00 73 00 20 00 61 00 20 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 20 00 73 00 69 00 67 00 6e 00 61 00 74 00 75 00 72 00 65 00 73 00 } //01 00  Automatically adds a random signatures
		$a_00_5 = {41 00 75 00 74 00 6f 00 53 00 69 00 67 00 2e 00 64 00 6c 00 6c 00 } //00 00  AutoSig.dll
	condition:
		any of ($a_*)
 
}