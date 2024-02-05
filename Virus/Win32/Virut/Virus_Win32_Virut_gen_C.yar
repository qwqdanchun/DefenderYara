
rule Virus_Win32_Virut_gen_C{
	meta:
		description = "Virus:Win32/Virut.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 33 34 74 33 58 76 33 6e 74 41 00 43 6c 30 73 33 48 34 6e 64 6c 33 00 } //01 00 
		$a_00_1 = {56 78 5f 34 00 } //01 00 
		$a_00_2 = {ad 03 c3 66 81 78 02 74 50 75 09 81 78 05 6f 63 41 64 74 05 e2 ea 59 5d c3 } //01 00 
		$a_02_3 = {81 7b 4e 54 68 69 73 90 02 80 74 0e 90 02 80 03 43 3c 90 02 80 66 81 38 50 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}