
rule Trojan_Win32_Phorpiex_V_MTB{
	meta:
		description = "Trojan:Win32/Phorpiex.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {62 6e 62 31 79 7a 77 37 6d 35 35 76 72 68 71 6d 6d 77 32 65 30 78 70 76 65 6e 38 71 34 39 75 38 6d 36 33 70 72 76 33 68 68 7a } //01 00  bnb1yzw7m55vrhqmmw2e0xpven8q49u8m63prv3hhz
		$a_81_1 = {62 61 6e 64 31 65 63 6c 39 63 32 77 32 64 74 78 78 37 30 70 65 77 76 73 6c 36 6c 65 33 73 64 38 73 72 72 6c 67 33 36 76 74 68 78 } //01 00  band1ecl9c2w2dtxx70pewvsl6le3sd8srrlg36vthx
		$a_81_2 = {62 63 31 71 34 65 79 6d 30 33 30 37 32 79 6b 30 7a 61 68 64 6d 39 6a 79 6d 32 38 76 6b 30 64 78 77 79 76 73 35 37 73 72 36 67 } //01 00  bc1q4eym03072yk0zahdm9jym28vk0dxwyvs57sr6g
		$a_01_3 = {63 00 6f 00 73 00 6d 00 6f 00 73 00 } //01 00  cosmos
		$a_01_4 = {62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 63 00 61 00 73 00 68 00 3a 00 } //01 00  bitcoincash:
		$a_01_5 = {56 00 6f 00 6c 00 44 00 72 00 69 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  VolDriver.exe
		$a_01_6 = {6e 00 6f 00 64 00 65 00 73 00 69 00 6e 00 66 00 6f 00 2e 00 64 00 61 00 74 00 } //01 00  nodesinfo.dat
		$a_01_7 = {63 00 6d 00 64 00 69 00 6e 00 66 00 6f 00 2e 00 64 00 61 00 74 00 } //00 00  cmdinfo.dat
	condition:
		any of ($a_*)
 
}