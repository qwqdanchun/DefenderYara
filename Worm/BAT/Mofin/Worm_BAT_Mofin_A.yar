
rule Worm_BAT_Mofin_A{
	meta:
		description = "Worm:BAT/Mofin.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 61 72 5f 73 65 68 5f 65 78 74 69 6f 6e 00 } //01 00 
		$a_01_1 = {74 61 72 5f 73 65 6e 64 5f 66 69 6c 73 00 } //01 00  慴彲敳摮晟汩s
		$a_01_2 = {5c 00 77 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 76 00 78 00 } //01 00  \wsystem.vx
		$a_01_3 = {5c 00 73 00 75 00 63 00 68 00 6f 00 73 00 74 00 2e 00 2e 00 65 00 78 00 65 00 } //01 00  \suchost..exe
		$a_01_4 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 2e 00 65 00 78 00 65 00 } //01 00  \svchost..exe
		$a_03_5 = {2a 00 2e 00 64 00 6f 00 63 00 90 01 02 2a 00 2e 00 78 00 6c 00 73 00 78 00 90 01 02 2a 00 2e 00 78 00 6c 00 73 00 90 01 02 2a 00 2e 00 64 00 6f 00 63 00 78 00 90 01 02 2a 00 2e 00 70 00 64 00 66 00 90 00 } //00 00 
		$a_00_6 = {87 10 00 } //00 b9 
	condition:
		any of ($a_*)
 
}