
rule PWS_BAT_Nimisi_A{
	meta:
		description = "PWS:BAT/Nimisi.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 5f 00 76 00 61 00 6c 00 75 00 65 00 } //01 00 
		$a_01_1 = {67 65 74 4d 53 4e 37 35 50 61 73 73 77 6f 72 64 73 00 } //01 00 
		$a_03_2 = {74 00 36 00 4b 00 7a 00 58 00 68 00 43 00 68 00 90 02 06 44 00 79 00 6e 00 44 00 4e 00 53 00 90 00 } //01 00 
		$a_01_3 = {26 00 75 00 72 00 6c 00 3d 00 00 0d 26 00 75 00 73 00 65 00 72 00 3d 00 00 0d 26 00 70 00 61 00 73 00 73 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 22 
	condition:
		any of ($a_*)
 
}