
rule Trojan_Win32_Fleercivet_E{
	meta:
		description = "Trojan:Win32/Fleercivet.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {6a 40 58 83 f9 06 74 0e 6a 0a 83 f9 09 5a 0f 45 c2 eb 03 6a 56 58 8b e5 5d c3 } //01 00 
		$a_03_1 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 90 0f 01 00 00 2e 00 61 00 74 00 74 00 90 00 } //01 00 
		$a_01_2 = {20 5b 25 30 34 64 2d 25 30 32 64 2d 25 30 32 64 5d 20 5b 25 30 32 64 2d 25 30 32 64 2d 25 30 32 64 2d 25 30 33 64 5d 20 2d 3e 5b 5d 3c 20 20 25 73 20 20 3e } //01 00   [%04d-%02d-%02d] [%02d-%02d-%02d-%03d] ->[]<  %s  >
		$a_01_3 = {5b 00 7c 00 5d 00 25 00 30 00 38 00 58 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 2e 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 } //01 00  [|]%08X[|]%s[|]%d[|]%s[|]127.0.0.1[|]%d[|]%d[|]%d.%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]
		$a_01_4 = {69 70 63 62 33 3d 00 00 74 69 6d 65 75 70 3d 00 64 6e 75 70 31 3d 00 00 64 6e 65 31 3d 00 00 00 63 6c 5f 75 72 6c 31 3d 00 00 00 00 74 69 6d 65 5f 73 69 74 65 31 3d } //00 00 
	condition:
		any of ($a_*)
 
}