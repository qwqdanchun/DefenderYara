
rule PWS_Win32_Fakemsn_P{
	meta:
		description = "PWS:Win32/Fakemsn.P,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 6c 6f 67 00 90 02 03 00 57 69 6e 64 6f 77 73 20 4c 69 76 65 20 4d 65 73 73 65 6e 67 65 72 00 90 02 05 64 69 67 6f 20 64 65 20 65 72 72 6f 3a 90 00 } //01 00 
		$a_01_1 = {74 69 74 75 6c 6f 3d 58 78 20 53 6d 61 6c 76 69 6c 6c 65 20 78 58 } //01 00  titulo=Xx Smalville xX
		$a_01_2 = {50 72 6a 6d 73 6e } //01 00  Prjmsn
		$a_03_3 = {00 40 67 6d 61 69 6c 2e 63 6f 6d 00 90 02 0b 00 70 72 61 71 75 65 6d 3d 00 90 02 0b 00 70 72 61 71 75 65 6d 31 3d 00 90 02 0b 00 70 72 61 71 75 65 6d 32 3d 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}