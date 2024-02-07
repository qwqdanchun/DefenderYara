
rule Trojan_BAT_Remcos_NEK_MTB{
	meta:
		description = "Trojan:BAT/Remcos.NEK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 39 36 38 42 30 39 45 42 45 31 32 45 42 42 } //01 00  7968B09EBE12EBB
		$a_01_1 = {39 45 37 34 42 44 45 34 43 32 37 33 41 31 43 } //01 00  9E74BDE4C273A1C
		$a_01_2 = {58 00 47 00 35 00 56 00 34 00 34 00 51 00 5a 00 48 00 45 00 4f 00 52 00 48 00 37 00 31 00 37 00 32 00 47 00 34 00 55 00 52 00 38 00 } //01 00  XG5V44QZHEORH7172G4UR8
		$a_01_3 = {50 00 6f 00 69 00 73 00 6f 00 6e 00 2e 00 54 00 72 00 61 00 69 00 6e 00 } //01 00  Poison.Train
		$a_01_4 = {45 00 64 00 44 00 47 00 } //00 00  EdDG
	condition:
		any of ($a_*)
 
}