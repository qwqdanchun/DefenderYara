
rule TrojanClicker_Win64_Fleercivet_B{
	meta:
		description = "TrojanClicker:Win64/Fleercivet.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {0f 1f 80 00 00 00 00 80 30 0a 48 8d 40 01 48 ff c9 75 f4 } //01 00 
		$a_01_1 = {5f 48 53 4a 39 30 39 4e 4a 4a 4e 4a 39 30 32 30 33 5f } //01 00  _HSJ909NJJNJ90203_
		$a_01_2 = {63 6c 5f 75 72 6c 31 3d } //01 00  cl_url1=
		$a_01_3 = {36 35 37 36 7c 25 73 2e 64 61 74 7c } //01 00  6576|%s.dat|
		$a_01_4 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 74 00 65 00 6d 00 70 00 00 00 } //01 00 
		$a_01_5 = {25 00 73 00 5c 00 40 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 2e 00 61 00 74 00 74 00 00 00 } //01 00 
		$a_01_6 = {61 00 61 00 31 00 39 00 64 00 66 00 66 00 37 00 5b 00 7c 00 5d 00 25 00 30 00 38 00 58 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 73 00 5b 00 7c 00 5d 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 2e 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 25 00 64 00 5b 00 7c 00 5d 00 } //00 00  aa19dff7[|]%08X[|]%s[|]%d[|]%s[|]127.0.0.1[|]%d[|]%d[|]%d.%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]%d[|]
	condition:
		any of ($a_*)
 
}