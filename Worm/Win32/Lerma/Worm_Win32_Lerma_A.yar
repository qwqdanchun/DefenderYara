
rule Worm_Win32_Lerma_A{
	meta:
		description = "Worm:Win32/Lerma.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 6f 64 45 72 6d 61 } //01 00 
		$a_01_1 = {4c 00 41 00 53 00 65 00 52 00 4d 00 61 00 } //01 00 
		$a_01_2 = {7e 00 7e 00 2d 00 3c 00 3c 00 2d 00 3d 00 43 00 65 00 63 00 61 00 63 00 69 00 6e 00 67 00 20 00 48 00 61 00 72 00 69 00 20 00 4b 00 69 00 61 00 6d 00 61 00 74 00 20 00 4d 00 65 00 6e 00 6a 00 65 00 6c 00 61 00 6e 00 67 00 20 00 54 00 69 00 62 00 61 00 20 00 49 00 6e 00 73 00 61 00 66 00 6c 00 61 00 68 00 20 00 49 00 6e 00 73 00 61 00 6e 00 20 00 42 00 79 00 20 00 4c 00 61 00 73 00 69 00 61 00 66 00 3d 00 2d 00 3e 00 3e 00 2d 00 7e 00 7e 00 } //01 00 
		$a_01_3 = {4d 00 79 00 70 00 69 00 63 00 74 00 75 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {64 00 72 00 69 00 76 00 65 00 74 00 79 00 70 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}