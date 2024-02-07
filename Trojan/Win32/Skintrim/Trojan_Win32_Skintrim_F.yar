
rule Trojan_Win32_Skintrim_F{
	meta:
		description = "Trojan:Win32/Skintrim.F,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 79 6d 75 74 73 67 6c 77 6f 72 6b 00 } //02 00 
		$a_01_1 = {70 6c 61 74 65 66 6f 72 6d 3d 00 } //01 00 
		$a_01_2 = {38 37 34 39 34 61 30 62 61 38 66 38 66 39 34 65 66 64 37 64 65 62 63 61 66 39 31 38 34 37 65 34 36 39 31 61 36 63 66 63 32 65 39 65 34 65 64 38 65 62 35 61 34 61 37 39 66 37 32 39 62 39 65 36 33 62 66 63 64 64 66 61 32 64 39 63 65 62 31 61 32 61 39 38 35 37 33 39 66 35 34 61 66 62 37 64 65 64 63 65 66 64 31 63 34 62 65 36 30 61 38 38 30 38 } //02 00  87494a0ba8f8f94efd7debcaf91847e4691a6cfc2e9e4ed8eb5a4a79f729b9e63bfcddfa2d9ceb1a2a985739f54afb7dedcefd1c4be60a8808
		$a_01_3 = {3c 5f 45 47 4d 43 5f 3e 00 00 00 00 5f 00 53 00 59 00 53 00 54 00 45 00 4d 00 5f 00 44 00 49 00 52 00 5f 00 5c 00 00 00 5f 53 59 53 54 45 4d 5f 44 49 52 5f 5c 00 00 00 3c 2f 43 46 47 3e 00 00 } //01 00 
		$a_01_4 = {c6 00 6e 8b 06 59 c6 40 01 6f 8b 06 c6 40 02 5f 8b 06 c6 40 03 61 8b 06 c6 40 04 6e 8b 06 c6 40 05 74 8b 06 c6 40 06 69 8b 06 c6 40 07 76 8b 06 c6 40 08 69 8b 06 c6 40 09 72 } //02 00 
		$a_03_5 = {74 02 89 08 8b 45 10 3b c3 74 05 8b 55 e8 89 10 81 f9 c8 00 00 00 0f 90 01 02 02 00 00 bf 0a 02 00 00 90 00 } //03 00 
		$a_01_6 = {7c 6f 53 8a 06 84 c0 74 5d 3c 2a 74 59 46 80 3e 00 74 53 8a 0e 50 88 4d 08 46 } //00 00 
	condition:
		any of ($a_*)
 
}