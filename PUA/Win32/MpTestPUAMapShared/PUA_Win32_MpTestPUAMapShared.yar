
rule PUA_Win32_MpTestPUAMapShared{
	meta:
		description = "PUA:Win32/MpTestPUAMapShared,SIGNATURE_TYPE_PEHSTR,0b 00 0a 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 55 41 20 74 65 73 74 20 66 69 6c 65 20 4d 70 50 55 41 4d 61 70 53 68 61 72 65 64 } //01 00 
		$a_01_1 = {49 6e 74 65 72 6e 61 6c 20 74 65 73 74 20 6f 6e 6c 79 21 20 44 6f 20 6e 6f 74 20 64 69 73 74 72 69 62 75 74 65 20 6f 75 74 73 69 64 65 20 79 6f 75 72 20 74 65 61 6d 21 } //03 00 
		$a_01_2 = {64 39 33 37 61 37 33 64 2d 30 31 66 34 2d 34 36 30 66 2d 61 34 35 30 2d 64 39 33 63 35 32 35 66 35 39 32 62 } //03 00 
		$a_01_3 = {34 38 36 63 65 62 63 30 2d 39 36 64 61 2d 34 38 34 66 2d 62 64 38 65 2d 31 66 33 30 62 39 63 32 32 34 35 65 } //03 00 
		$a_01_4 = {33 30 64 32 63 36 38 62 2d 39 37 61 62 2d 34 65 62 34 2d 61 32 31 33 2d 61 62 39 62 65 33 32 39 62 30 30 33 } //00 00 
	condition:
		any of ($a_*)
 
}