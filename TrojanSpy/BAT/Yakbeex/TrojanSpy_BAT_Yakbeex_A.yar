
rule TrojanSpy_BAT_Yakbeex_A{
	meta:
		description = "TrojanSpy:BAT/Yakbeex.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_80_0 = {62 61 72 6b 6c 6f 77 2e 65 78 65 00 } //barklow.exe  01 00 
		$a_80_1 = {47 61 6d 69 6e 67 20 4d 6f 75 73 65 20 44 72 69 76 65 72 00 } //Gaming Mouse Driver  01 00 
		$a_01_2 = {61 00 31 00 66 00 34 00 36 00 66 00 31 00 30 00 2d 00 34 00 63 00 37 00 33 00 2d 00 34 00 61 00 39 00 34 00 2d 00 38 00 32 00 62 00 37 00 2d 00 34 00 66 00 32 00 64 00 30 00 61 00 35 00 33 00 37 00 30 00 65 00 61 00 00 00 } //01 00 
		$a_01_3 = {5c 4f 62 66 75 73 63 61 74 65 64 5c 62 61 72 6b 6c 6f 77 2e 70 64 62 00 } //01 00 
		$a_01_4 = {44 6f 6d 61 69 6e 55 70 44 6f 77 6e 00 } //00 00 
		$a_00_5 = {80 10 00 } //00 33 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_BAT_Yakbeex_A_2{
	meta:
		description = "TrojanSpy:BAT/Yakbeex.A,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 00 6b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 26 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00  =keystrokes&machinename=
		$a_01_1 = {3d 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 26 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00  =passwords&machinename=
		$a_01_2 = {3d 00 63 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 26 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00  =clipboard&machinename=
		$a_01_3 = {3d 00 6e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 26 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 } //00 00  =notification&machinename=
	condition:
		any of ($a_*)
 
}