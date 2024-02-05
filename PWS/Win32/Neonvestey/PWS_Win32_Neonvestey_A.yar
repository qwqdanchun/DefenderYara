
rule PWS_Win32_Neonvestey_A{
	meta:
		description = "PWS:Win32/Neonvestey.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {0f be 0c 08 83 f1 71 88 0c 30 40 eb e9 } //02 00 
		$a_01_1 = {2a 00 2e 00 78 00 6c 00 73 00 2a 00 00 00 00 00 2a 00 2e 00 70 00 70 00 74 00 2a 00 00 00 00 00 2a 00 2e 00 74 00 78 00 74 00 00 00 2a 00 2e 00 70 00 68 00 70 00 2a 00 } //02 00 
		$a_01_2 = {43 6f 6c 6c 65 63 74 49 6e 66 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_3 = {74 65 64 50 61 73 73 77 6f 72 64 20 46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 00 } //01 00 
		$a_01_4 = {3d 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 20 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 3d 00 3d 00 } //01 00 
		$a_01_5 = {3d 00 20 00 52 00 65 00 63 00 65 00 6e 00 74 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 4c 00 69 00 73 00 74 00 20 00 3d 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}