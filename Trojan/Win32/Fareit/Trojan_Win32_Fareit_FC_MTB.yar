
rule Trojan_Win32_Fareit_FC_MTB{
	meta:
		description = "Trojan:Win32/Fareit.FC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 49 00 50 00 4f 00 46 00 44 00 41 00 59 00 2e 00 54 00 58 00 54 00 } //01 00  TIPOFDAY.TXT
		$a_01_1 = {43 00 37 00 72 00 37 00 79 00 37 00 70 00 37 00 74 00 37 00 44 00 37 00 65 00 37 00 63 00 37 00 72 00 37 00 79 00 37 00 70 00 37 00 74 00 37 00 } //01 00  C7r7y7p7t7D7e7c7r7y7p7t7
		$a_01_2 = {52 00 6f 00 63 00 6b 00 20 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 } //01 00  Rock Debugger
		$a_81_3 = {50 6f 77 65 72 4f 66 54 68 65 55 6e 69 76 65 72 73 65 } //01 00  PowerOfTheUniverse
		$a_81_4 = {6e 71 78 63 73 65 66 73 66 73 63 79 63 64 75 65 76 73 } //01 00  nqxcsefsfscycduevs
		$a_81_5 = {72 6e 63 6d 75 69 73 64 6e 63 73 6a 76 6d 65 } //01 00  rncmuisdncsjvme
		$a_81_6 = {75 6a 6e 6d 63 73 61 73 6d 63 61 77 65 } //01 00  ujnmcsasmcawe
		$a_81_7 = {63 65 72 75 6d 6d 61 64 63 65 71 77 73 61 } //00 00  cerummadceqwsa
	condition:
		any of ($a_*)
 
}