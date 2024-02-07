
rule Trojan_BAT_Daggertooth_C_dha{
	meta:
		description = "Trojan:BAT/Daggertooth.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 00 38 00 70 00 33 00 61 00 45 00 65 00 4b 00 51 00 62 00 4e 00 34 00 6b 00 6c 00 46 00 4d 00 48 00 6d 00 63 00 43 00 32 00 64 00 55 00 39 00 66 00 36 00 67 00 4f 00 52 00 47 00 49 00 68 00 44 00 42 00 4c 00 53 00 30 00 6a 00 50 00 35 00 54 00 6e 00 37 00 6f 00 31 00 41 00 56 00 4a 00 } //01 00  i8p3aEeKQbN4klFMHmcC2dU9f6gORGIhDBLS0jP5Tn7o1AVJ
		$a_01_1 = {38 00 44 00 32 00 39 00 38 00 37 00 33 00 42 00 30 00 42 00 31 00 38 00 46 00 39 00 43 00 32 00 46 00 39 00 45 00 38 00 33 00 38 00 44 00 46 00 46 00 46 00 35 00 39 00 42 00 } //01 00  8D29873B0B18F9C2F9E838DFFF59B
		$a_42_2 = {1f 51 0a 12 00 28 90 01 03 0a 1f 26 0a 12 00 28 90 01 03 0a 1f 34 0a 12 00 28 90 01 03 0a 1f 67 0a 12 00 28 90 01 03 0a 28 90 01 03 0a 90 00 00 } //00 5d 
	condition:
		any of ($a_*)
 
}