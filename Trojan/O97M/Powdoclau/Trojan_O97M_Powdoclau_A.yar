
rule Trojan_O97M_Powdoclau_A{
	meta:
		description = "Trojan:O97M/Powdoclau.A,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_02_0 = {46 73 6f 2e 43 72 45 61 74 45 74 45 58 54 66 49 6c 45 28 45 6e 76 69 72 6f 6e 28 22 41 50 50 44 41 54 41 22 29 90 02 40 2e 77 73 66 90 00 } //10
		$a_00_1 = {33 37 37 33 31 32 32 30 31 37 30 38 31 36 31 30 31 31 35 39 31 36 37 38 38 39 31 32 31 31 38 39 39 31 33 34 37 31 38 31 34 31 38 31 35 35 33 39 31 31 31 39 33 37 31 38 39 38 31 31 } //1 377312201708161011591678891211899134718141815539111937189811
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1) >=11
 
}