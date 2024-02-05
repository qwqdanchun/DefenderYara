
rule Ransom_Win32_Pryncisslyn_A{
	meta:
		description = "Ransom:Win32/Pryncisslyn.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {2f 00 62 00 74 00 63 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //01 00 
		$a_00_2 = {2f 00 61 00 64 00 72 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //01 00 
		$a_00_3 = {2f 00 64 00 61 00 74 00 61 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //02 00 
		$a_02_4 = {40 00 65 00 63 00 68 00 6f 00 20 00 6f 00 66 00 66 00 90 02 06 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 2e 00 65 00 78 00 65 00 90 02 06 64 00 65 00 6c 00 90 00 } //02 00 
		$a_02_5 = {44 00 65 00 63 00 72 00 79 00 70 00 74 00 46 00 69 00 6c 00 65 00 73 00 90 02 06 69 00 64 00 2e 00 74 00 78 00 74 00 90 02 06 6c 00 6e 00 6b 00 2e 00 74 00 78 00 74 00 90 00 } //02 00 
		$a_02_6 = {64 00 65 00 6c 00 2e 00 62 00 61 00 74 00 90 02 06 2e 00 67 00 72 00 74 00 90 00 } //00 00 
		$a_00_7 = {5d 04 00 } //00 13 
	condition:
		any of ($a_*)
 
}