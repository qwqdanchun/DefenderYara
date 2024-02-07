
rule TrojanSpy_BAT_Daculoa_A{
	meta:
		description = "TrojanSpy:BAT/Daculoa.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 72 00 61 00 63 00 75 00 6c 00 61 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 2d 00 } //01 00  Dracula Logger -
		$a_01_1 = {53 00 69 00 63 00 6b 00 5f 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  Sick_Recovery@gmail.com
		$a_01_2 = {5c 00 5f 00 4f 00 50 00 31 00 2e 00 74 00 78 00 } //01 00  \_OP1.tx
		$a_01_3 = {00 42 44 00 46 42 00 4e 44 44 00 } //01 00 
		$a_01_4 = {00 42 6f 00 50 41 53 53 5f 52 45 43 4f 56 45 52 59 00 } //00 00  䈀o䅐卓剟䍅噏剅Y
		$a_00_5 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}