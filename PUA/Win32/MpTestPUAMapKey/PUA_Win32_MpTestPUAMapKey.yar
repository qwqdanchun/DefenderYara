
rule PUA_Win32_MpTestPUAMapKey{
	meta:
		description = "PUA:Win32/MpTestPUAMapKey,SIGNATURE_TYPE_PEHSTR,0b 00 0a 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 55 41 20 74 65 73 74 20 66 69 6c 65 20 4d 70 50 55 41 4d 61 70 4b 65 79 } //01 00  PUA test file MpPUAMapKey
		$a_01_1 = {49 6e 74 65 72 6e 61 6c 20 74 65 73 74 20 6f 6e 6c 79 21 20 44 6f 20 6e 6f 74 20 64 69 73 74 72 69 62 75 74 65 20 6f 75 74 73 69 64 65 20 79 6f 75 72 20 74 65 61 6d 21 } //03 00  Internal test only! Do not distribute outside your team!
		$a_01_2 = {38 35 37 32 31 63 35 64 2d 34 37 63 66 2d 34 35 32 65 2d 38 63 62 62 2d 63 64 38 61 33 32 34 35 38 34 63 61 } //03 00  85721c5d-47cf-452e-8cbb-cd8a324584ca
		$a_01_3 = {34 38 36 63 65 62 63 30 2d 39 36 64 61 2d 34 38 34 66 2d 62 64 38 65 2d 31 66 33 30 62 39 63 32 32 34 35 65 } //03 00  486cebc0-96da-484f-bd8e-1f30b9c2245e
		$a_01_4 = {66 33 36 33 62 31 65 30 2d 61 39 38 64 2d 34 66 32 33 2d 38 36 34 35 2d 65 39 35 66 35 39 32 30 36 33 33 39 } //00 00  f363b1e0-a98d-4f23-8645-e95f59206339
	condition:
		any of ($a_*)
 
}